.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$1;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$DnsmasqThread;,
        Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNSMASQ_POLLING_INTERVAL:I = 0x3e8

.field private static final DNSMASQ_POLLING_MAX_TIMES:I = 0xa

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field public static final EXTRA_TETHERED_IFACE:Ljava/lang/String; = "tetheredClientIface"

.field public static final EXTRA_UPSTREAM_IFACE:Ljava/lang/String; = "tetheringUpstreamIface"

.field public static final EXTRA_UPSTREAM_INFO_DEFAULT:I = -0x1

.field public static final EXTRA_UPSTREAM_IP_TYPE:Ljava/lang/String; = "tetheringUpstreamIpType"

.field public static final EXTRA_UPSTREAM_UPDATE_TYPE:Ljava/lang/String; = "tetheringUpstreamUpdateType"

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field public static final UPSTREAM_IFACE_CHANGED_ACTION:Ljava/lang/String; = "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = false

.field private static final dhcpLocation:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.leases"


# instance fields
.field private mConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mL2ConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPreferredUpstreamMobileApn:I

.field private mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 144
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    .line 145
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    .line 146
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    .line 170
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "192.168.42.254"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "192.168.43.2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "192.168.49.2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "192.168.49.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/os/Looper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nmService"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x1

    .line 201
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 150
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    .line 202
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    .line 203
    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    .line 204
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    .line 205
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 207
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    .line 213
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    .line 214
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v2, "TetherMaster"

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    .line 215
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->start()V

    .line 217
    new-instance v1, Lcom/android/server/connectivity/Tethering$StateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 235
    :cond_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 242
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "8.8.8.8"

    aput-object v3, v1, v2

    .line 244
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v2, "8.8.4.4"

    aput-object v2, v1, v4

    .line 245
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Landroid/net/wifi/WifiDevice;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/Tethering;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Tethering;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method private clearTetheredNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 763
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 766
    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 768
    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 12
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 841
    new-array v5, v8, [Ljava/lang/String;

    .line 843
    .local v5, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 848
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v4, v1, v3

    .line 849
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 850
    const/4 v6, 0x0

    .line 852
    .local v6, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    .line 853
    if-eqz v6, :cond_0

    .line 854
    const-string v9, "192.168.42.129"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 855
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v9, Landroid/net/LinkAddress;

    const/16 v10, 0x18

    invoke-direct {v9, v0, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 856
    if-eqz p1, :cond_1

    .line 857
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 861
    :goto_1
    const-string v9, "running"

    invoke-virtual {v6, v9}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    .line 862
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v9, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 848
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 845
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    const-string v10, "Error listing Interfaces"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return v8

    .line 859
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v7    # "len$":I
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 864
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 865
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "Tethering"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error configuring interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 871
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 322
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 324
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 321
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 325
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z
    .locals 13
    .param p1, "device"    # Landroid/net/wifi/WifiDevice;

    .prologue
    const/4 v11, 0x3

    .line 424
    const/4 v9, 0x0

    .line 425
    .local v9, "result":Z
    const/4 v4, 0x0

    .line 429
    .local v4, "fstream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v10, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .local v5, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 431
    .local v6, "in":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 433
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 434
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "fields":[Ljava/lang/String;
    array-length v10, v3

    if-le v10, v11, :cond_0

    .line 438
    const/4 v10, 0x1

    aget-object v0, v3, v10

    .line 439
    .local v0, "addr":Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v8, v3, v10

    .line 441
    .local v8, "name":Ljava/lang/String;
    iget-object v10, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 442
    iput-object v8, p1, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 443
    const/4 v9, 0x1

    .line 451
    .end local v0    # "addr":Ljava/lang/String;
    .end local v3    # "fields":[Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_4

    .line 453
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 458
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return v9

    .line 454
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 448
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "in":Ljava/io/DataInputStream;
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 449
    .local v2, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readDeviceNameFromDnsmasq: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    if-eqz v4, :cond_2

    .line 453
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 454
    :catch_2
    move-exception v10

    goto :goto_0

    .line 451
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v4, :cond_3

    .line 453
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 454
    :cond_3
    :goto_3
    throw v10

    :catch_3
    move-exception v11

    goto :goto_3

    .line 451
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 448
    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v4    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_4
    move-object v4, v5

    .end local v5    # "fstream":Ljava/io/FileInputStream;
    .restart local v4    # "fstream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private sendTetherConnectStateChangedBroadcast()V
    .locals 3

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "broadcast":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 420
    const v1, 0x10806a8

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_0
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 16

    .prologue
    const v15, 0x10806a6

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-nez v12, :cond_0

    .line 669
    :goto_0
    return-void

    .line 608
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v2, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v5, "erroredList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 613
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 614
    .local v10, "usbTethered":Z
    const/4 v3, 0x0

    .line 616
    .local v3, "bluetoothTethered":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v13

    .line 617
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 618
    .local v8, "ifaces":Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 619
    .local v7, "iface":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 620
    .local v9, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v9, :cond_1

    .line 621
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 622
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 637
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "ifaces":Ljava/util/Set;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 623
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "iface":Ljava/lang/Object;
    .restart local v8    # "ifaces":Ljava/util/Set;
    .restart local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 624
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 625
    .restart local v7    # "iface":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 626
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 627
    const/4 v10, 0x1

    .line 633
    :cond_4
    :goto_2
    check-cast v7, Ljava/lang/String;

    .end local v7    # "iface":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 628
    .restart local v7    # "iface":Ljava/lang/Object;
    :cond_5
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 629
    const/4 v11, 0x1

    goto :goto_2

    .line 630
    :cond_6
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 631
    const/4 v3, 0x1

    goto :goto_2

    .line 637
    .end local v7    # "iface":Ljava/lang/Object;
    .end local v9    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    new-instance v4, Landroid/content/Intent;

    const-string v12, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .local v4, "broadcast":Landroid/content/Intent;
    const/high16 v12, 0x24000000

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 641
    const-string v12, "availableArray"

    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 643
    const-string v12, "activeArray"

    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 644
    const-string v12, "erroredArray"

    invoke-virtual {v4, v12, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 646
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v4, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 648
    const-string v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendTetherStateChangedBroadcast "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    if-eqz v10, :cond_a

    .line 653
    if-nez v11, :cond_8

    if-eqz v3, :cond_9

    .line 654
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 656
    :cond_9
    const v12, 0x10806a7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 658
    :cond_a
    if-eqz v11, :cond_c

    .line 659
    if-eqz v3, :cond_b

    .line 660
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 662
    :cond_b
    const v12, 0x10806a8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 664
    :cond_c
    if-eqz v3, :cond_d

    .line 665
    const v12, 0x10806a5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_0

    .line 667
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_0
.end method

.method private sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .locals 4
    .param p1, "upstreamIface"    # Ljava/lang/String;
    .param p2, "tetheredIface"    # Ljava/lang/String;
    .param p3, "ip_type"    # I
    .param p4, "update_type"    # Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;

    .prologue
    .line 674
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUpstreamIfaceChangeBroadcast upstreamIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tetheredIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IP Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " update_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tetheringUpstreamIface"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string v1, "tetheredClientIface"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-string v1, "tetheringUpstreamIpType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 681
    const-string v1, "tetheringUpstreamUpdateType"

    invoke-virtual {p4}, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 684
    return-void
.end method

.method private showTetheredNotification(I)V
    .locals 12
    .param p1, "icon"    # I

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 688
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    if-nez v7, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-ne v0, p1, :cond_2

    .line 694
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10806a8

    if-ne p1, v0, :cond_0

    .line 701
    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 705
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 706
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 713
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 714
    .local v9, "r":Landroid/content/res/Resources;
    const v0, 0x1040589

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 717
    .local v11, "title":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v10

    .line 719
    .local v10, "size":I
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x10806a8

    if-ne p1, v0, :cond_7

    .line 721
    if-nez v10, :cond_5

    .line 722
    const v0, 0x104058b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 734
    .local v6, "message":Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v0, :cond_4

    .line 735
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    .line 736
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 738
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 739
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 740
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 742
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x10806a8

    if-ne p1, v0, :cond_8

    if-lez v10, :cond_8

    .line 745
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 750
    :goto_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->visibility:I

    .line 751
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1060059

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 753
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v11, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-string v1, "status"

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 756
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 723
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_5
    const/4 v0, 0x1

    if-ne v10, v0, :cond_6

    .line 724
    const v0, 0x104058c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 727
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_6
    const v0, 0x104058d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 731
    .end local v6    # "message":Ljava/lang/CharSequence;
    :cond_7
    const v0, 0x104058a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .restart local v6    # "message":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 747
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v11, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method private tetherUsb(Z)V
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    .line 810
    const/4 v8, 0x0

    new-array v4, v8, [Ljava/lang/String;

    .line 812
    .local v4, "ifaces":[Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v8}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 818
    const-string v7, "sys.usb.tethering"

    .line 819
    .local v7, "usbSysctlKey":Ljava/lang/String;
    const-string v8, "sys.usb.tethering"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    if-eqz p1, :cond_0

    .line 822
    const-string v8, "sys.usb.tethering"

    const-string v9, "true"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    :cond_0
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2

    .line 826
    .local v3, "iface":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 827
    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    .line 828
    .local v6, "result":I
    :goto_1
    if-nez v6, :cond_2

    .line 834
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "iface":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "result":I
    .end local v7    # "usbSysctlKey":Ljava/lang/String;
    :goto_2
    return-void

    .line 813
    :catch_0
    move-exception v1

    .line 814
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Tethering"

    const-string v9, "Error listing Interfaces"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 827
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "iface":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v7    # "usbSysctlKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 825
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 833
    .end local v3    # "iface":Ljava/lang/String;
    :cond_3
    const-string v8, "Tethering"

    const-string v9, "unable start or stop USB tethering"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public checkDunRequired()V
    .locals 6

    .prologue
    const/4 v0, 0x5

    const/4 v3, 0x4

    .line 924
    const/4 v1, 0x2

    .line 925
    .local v1, "secureSetting":I
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 926
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    .line 929
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 931
    const/4 v5, 0x2

    if-eq v1, v5, :cond_9

    .line 932
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    move v0, v3

    .line 935
    .local v0, "requiredApn":I
    :cond_1
    if-ne v0, v3, :cond_5

    .line 936
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 937
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 966
    .end local v0    # "requiredApn":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 939
    .restart local v0    # "requiredApn":I
    :cond_2
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 940
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 942
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 943
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 958
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    .line 966
    .end local v0    # "requiredApn":I
    :goto_3
    monitor-exit v4

    .line 967
    return-void

    .line 946
    .restart local v0    # "requiredApn":I
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 947
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 949
    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 950
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 953
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 960
    :cond_8
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto :goto_3

    .line 964
    .end local v0    # "requiredApn":I
    :cond_9
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2194
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2215
    :goto_0
    return-void

    .line 2202
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2203
    :try_start_0
    const-string v3, "mUpstreamIfaceTypes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2204
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2205
    .local v1, "netType":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2213
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "netType":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2208
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2209
    const-string v3, "Tether state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2210
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2211
    .local v2, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2213
    .end local v2    # "o":Ljava/lang/Object;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2214
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1011
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1013
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1014
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1015
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1016
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1017
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1020
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1022
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1023
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1025
    :cond_2
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 594
    if-nez v1, :cond_0

    .line 595
    const-string v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v2, 0x1

    monitor-exit v3

    .line 599
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTetherConnectedSta()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, "TetherConnectedStaList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 398
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 400
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    .line 404
    .local v1, "device":Landroid/net/wifi/WifiDevice;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    .end local v1    # "device":Landroid/net/wifi/WifiDevice;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 989
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 991
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 992
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 993
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 994
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 995
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 998
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1000
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 1001
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1003
    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    .prologue
    .line 971
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    .line 973
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 974
    .local v3, "keys":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 975
    .local v2, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 976
    .local v6, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 977
    check-cast v2, Ljava/lang/String;

    .end local v2    # "key":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 980
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keys":Ljava/util/Set;
    .end local v6    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keys":Ljava/util/Set;
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 981
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 982
    .local v5, "retVal":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 983
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 985
    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    .prologue
    .line 912
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 913
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 914
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 915
    .local v2, "values":[I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 916
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 917
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    :cond_0
    monitor-exit v4

    .line 920
    return-object v2

    .line 919
    .end local v0    # "i":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "values":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 350
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 351
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    const/4 v0, 0x1

    .line 356
    const/4 v2, 0x1

    .line 358
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_2
    if-nez v0, :cond_3

    .line 363
    monitor-exit v4

    .line 375
    :goto_0
    return-void

    .line 366
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 367
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v1, :cond_4

    .line 369
    monitor-exit v4

    goto :goto_0

    .line 374
    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 371
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 372
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 374
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 317
    return-void
.end method

.method public interfaceMessageRecevied(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interfaceMessageRecevied: message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_0
    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiDevice;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, "device":Landroid/net/wifi/WifiDevice;
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 529
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->readDeviceInfoFromDnsmasq(Landroid/net/wifi/WifiDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    .end local v0    # "device":Landroid/net/wifi/WifiDevice;
    :catch_0
    move-exception v1

    .line 550
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiDevice IllegalArgument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "device":Landroid/net/wifi/WifiDevice;
    :cond_2
    :try_start_1
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting poll device info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v2, Lcom/android/server/connectivity/Tethering$DnsmasqThread;

    const/16 v3, 0x3e8

    const/16 v4, 0xa

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/android/server/connectivity/Tethering$DnsmasqThread;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/wifi/WifiDevice;II)V

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$DnsmasqThread;->start()V

    goto :goto_0

    .line 544
    :cond_3
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-nez v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherConnectStateChangedBroadcast()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 381
    .local v0, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-nez v0, :cond_0

    .line 385
    monitor-exit v2

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 388
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "found":Z
    const/4 v2, 0x0

    .line 283
    .local v2, "usb":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    .line 284
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 292
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    monitor-exit v4

    .line 312
    :goto_1
    return-void

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    const/4 v0, 0x1

    .line 288
    const/4 v2, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 295
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p2, :cond_5

    .line 296
    if-nez v1, :cond_4

    .line 297
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    .line 298
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    .line 311
    :cond_4
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 302
    .restart local v1    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_5
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 306
    if-eqz v1, :cond_4

    .line 307
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 308
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 340
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 342
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 339
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 343
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 331
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    monitor-exit v5

    .line 333
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 330
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 334
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setUsbTethering(Z)I
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 889
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 891
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    .line 892
    if-eqz p1, :cond_1

    .line 893
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_0

    .line 894
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 906
    :goto_0
    monitor-exit v2

    .line 907
    return v4

    .line 896
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    .line 897
    const-string v1, "rndis"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_0

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 900
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    .line 901
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v1, :cond_2

    .line 902
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 904
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 559
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-nez v1, :cond_0

    .line 561
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v2, 0x1

    .line 569
    :goto_0
    return v2

    .line 559
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 564
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-nez v2, :cond_1

    .line 565
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v2, 0x4

    goto :goto_0

    .line 568
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 569
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 573
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    .line 577
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    if-nez v1, :cond_0

    .line 579
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v2, 0x1

    .line 587
    :goto_0
    return v2

    .line 577
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 582
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v2, 0x4

    goto :goto_0

    .line 586
    :cond_1
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    .line 587
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 11

    .prologue
    .line 254
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "tetherableUsbRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 258
    .local v7, "tetherableWifiRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070015

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 261
    .local v5, "tetherableBluetoothRegexs":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070018

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 263
    .local v3, "ifaceTypes":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v8, "upstreamIfaceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v0, v2

    .line 265
    .local v1, "i":I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v10

    .line 269
    :try_start_0
    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    .line 270
    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    .line 271
    iput-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    .line 272
    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    .line 273
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    .line 277
    return-void

    .line 273
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
