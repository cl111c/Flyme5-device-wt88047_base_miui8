.class Lcom/android/server/wifi/WifiAutoConnController;
.super Ljava/lang/Object;
.source "WifiAutoConnController.java"


# static fields
.field private static final DISCONNECTED_CONFIG_CACHE_SIZE:I = 0xa

.field private static final DISCONNECTED_TIME_LIST_SIZE:I = 0x5

.field private static final GOOD_NETWORK_DISCONNECTED_PERIOD:I = 0x493e0

.field private static final IN_BLACKLIST_TIME:I = 0x124f80

.field private static final POOR_NETWORK_DISCONNECTED_PERIOD:I = 0x1b7740

.field private static final WIFI_ENABLED:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBlacklistedBssids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigDisconnTimeCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnectType:I

.field private mConnectedNetworkType:I

.field private mContext:Landroid/content/Context;

.field private mDisableSsidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitializeCalled:Z

.field mLastNetworkId:I

.field private mSelectSsidType:I

.field private mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "wifiConfigStore"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, -0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "WifiAutoConnController"

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->TAG:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    .line 57
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConfigDisconnTimeCache:Landroid/util/LruCache;

    .line 239
    iput v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 61
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    .line 62
    iput-object p2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerDisableWifiAutoConnectChangedObserver()V

    .line 66
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->loadConnectType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    .line 68
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->loadSelectSsidType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    .line 69
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerConnectTypeChangedObserver()V

    .line 70
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerSelectSsidTypeChangedObserver()V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->registerConnectivityChangedReceiver()V

    .line 73
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiApManager;

    invoke-direct {v0, p2, p3}, Lcom/android/server/wifi/WifiApManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiAutoConnController;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # Ljava/util/HashSet;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiAutoConnController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiAutoConnController;)Lcom/android/server/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiAutoConnController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifi/WifiAutoConnController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiAutoConnController;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    return p1
.end method

.method private checkGoodNetworkAutoConn(Ljava/lang/String;)Z
    .locals 12
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConfigDisconnTimeCache:Landroid/util/LruCache;

    invoke-virtual {v8, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 323
    .local v2, "disconnTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_0

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 325
    .local v6, "now":J
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 326
    .local v4, "lastDisconnTime":J
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 327
    .local v0, "delta":J
    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    const-wide/32 v8, 0x493e0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_1

    sub-long v8, v6, v4

    const-wide/32 v10, 0x124f80

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    const/4 v3, 0x1

    .line 331
    .local v3, "isShouldInBlackList":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    .line 333
    const-string v8, "WifiAutoConnController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add bssid to blacklist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v0    # "delta":J
    .end local v3    # "isShouldInBlackList":Z
    .end local v4    # "lastDisconnTime":J
    .end local v6    # "now":J
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    return v8

    .line 327
    .restart local v0    # "delta":J
    .restart local v4    # "lastDisconnTime":J
    .restart local v6    # "now":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 335
    .restart local v3    # "isShouldInBlackList":Z
    :cond_2
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v3, :cond_0

    .line 337
    const-string v8, "WifiAutoConnController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove bssid to blacklist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v8, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    .end local v0    # "delta":J
    .end local v3    # "isShouldInBlackList":Z
    .end local v4    # "lastDisconnTime":J
    .end local v6    # "now":J
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private checkPoorNetworkAutoConn(Ljava/lang/String;)Z
    .locals 10
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 351
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConfigDisconnTimeCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 352
    .local v0, "disconnTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x5

    if-lt v1, v6, :cond_1

    .line 354
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 356
    .local v2, "lastDisconnTime":J
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x1b7740

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    move v1, v4

    .line 358
    .end local v2    # "lastDisconnTime":J
    :goto_0
    return v1

    .restart local v2    # "lastDisconnTime":J
    :cond_0
    move v1, v5

    .line 356
    goto :goto_0

    .end local v2    # "lastDisconnTime":J
    :cond_1
    move v1, v4

    .line 358
    goto :goto_0
.end method

.method private underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "rssi24"    # I
    .param p3, "rssi5"    # I

    .prologue
    .line 310
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    if-ge v0, p2, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    if-ge v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkAutoConn(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v0, 0x1

    .line 388
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mBlacklistedBssids:Ljava/util/List;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAutoConn(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 366
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->scanResultCache:Ljava/util/HashMap;

    .line 367
    .local v2, "scanResultCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_1

    .line 368
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v3, v3, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin24RSSI:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v4, v4, Lcom/android/server/wifi/WifiConfigStore;->thresholdInitialAutoJoinAttemptMin5RSSI:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wifi/WifiAutoConnController;->underThreshold(Landroid/net/wifi/WifiConfiguration;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    .local v0, "bssid":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiAutoConnController;->checkPoorNetworkAutoConn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    const/4 v3, 0x0

    .line 379
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method disConnect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 246
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    if-ne v0, v1, :cond_1

    .line 247
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->shouldEnableAllNetworks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 249
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 253
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 255
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoConnController;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 256
    return-void
.end method

.method disableNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(I)Z

    .line 237
    :cond_0
    return-void
.end method

.method public disconnInConnectedState(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p3, "reason"    # I

    .prologue
    const/4 v3, 0x5

    .line 397
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConfigDisconnTimeCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 403
    .local v1, "disconnTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_2

    .line 404
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "disconnTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .restart local v1    # "disconnTimeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConfigDisconnTimeCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 408
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 410
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getConnectedNetworkType()I
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 199
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method isDisableByUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isWifiAutoConnect()Z
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiAutoConnectAsk()Z
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_on"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 290
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 288
    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method isWifiSsidAutoSelect()Z
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWifiSsidAutoSelectAsk()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mSelectSsidType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAndEnableAllNetworks()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mInitializeCalled:Z

    .line 296
    return-void
.end method

.method loadConnectType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connect_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSelectSsidType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_select_ssid_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method processBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wifi/WifiAutoConnController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/WifiAutoConnController$5;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method registerConnectTypeChangedObserver()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$2;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$2;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 106
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connect_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    return-void
.end method

.method registerConnectivityChangedReceiver()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$4;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiAutoConnController$4;-><init>(Lcom/android/server/wifi/WifiAutoConnController;)V

    .line 134
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method registerDisableWifiAutoConnectChangedObserver()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$1;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$1;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 88
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_wifi_auto_connect_ssid"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mDisableSsidSet:Ljava/util/HashSet;

    .line 93
    return-void
.end method

.method registerSelectSsidTypeChangedObserver()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lcom/android/server/wifi/WifiAutoConnController$3;

    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiAutoConnController$3;-><init>(Lcom/android/server/wifi/WifiAutoConnController;Landroid/os/Handler;)V

    .line 121
    .local v0, "observer":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_select_ssid_type"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    return-void
.end method

.method public selectNetwork(I)V
    .locals 1
    .param p1, "netId"    # I

    .prologue
    .line 299
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiAutoConnController;->setSelectNetworkId(I)V

    .line 302
    :cond_0
    return-void
.end method

.method setSelectNetworkId(I)V
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mLastNetworkId:I

    .line 243
    return-void
.end method

.method shouldEnableAllNetworks()Z
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v0

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v0

    goto :goto_0
.end method

.method showAskDialog()V
    .locals 3

    .prologue
    .line 218
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiAutoConnect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SWITCH_TO_WIFI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateWifiEnableState()V
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mConnectedNetworkType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiAutoConnController;->isWifiSsidAutoSelect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 186
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 188
    .local v0, "currentNetworkId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/android/server/wifi/WifiAutoConnController;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
