.class public Lmiui/telephony/TelephonyManagerEx;
.super Lmiui/telephony/TelephonyManager;
.source "TelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/TelephonyManagerEx$1;,
        Lmiui/telephony/TelephonyManagerEx$Holder;
    }
.end annotation


# static fields
.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lmiui/telephony/TelephonyManager;-><init>()V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/TelephonyManagerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/telephony/TelephonyManagerEx$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;-><init>()V

    return-void
.end method

.method private static getCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1257
    const/4 v1, 0x0

    .line 1258
    .local v1, "countryIso":Ljava/lang/String;
    const-string v4, "country_detector"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/CountryDetector;

    .line 1259
    .local v2, "detector":Landroid/location/CountryDetector;
    if-eqz v2, :cond_0

    .line 1260
    invoke-virtual {v2}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 1261
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1265
    .end local v0    # "country":Landroid/location/Country;
    :cond_0
    if-nez v1, :cond_1

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1267
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1268
    const-string v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_1
    return-object v1
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManagerEx;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 57
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 61
    const-string v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1227
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "useExactMatch"    # Z

    .prologue
    .line 1276
    invoke-static {p0}, Lmiui/telephony/TelephonyManagerEx;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, "defaultCountryIso":Ljava/lang/String;
    const-string v9, "IN"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1278
    const/4 v9, 0x4

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "100"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "101"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "102"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "108"

    aput-object v10, v1, v9

    .line 1279
    .local v1, "INemergencyNumbers":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 1280
    .local v0, "INemergencyNum":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1281
    const-string v9, "TelephonyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isLocalEmergencyNumberInternal :number:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not a real IN emergency number,return false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v9, 0x0

    .line 1300
    .end local v0    # "INemergencyNum":Ljava/lang/String;
    .end local v1    # "INemergencyNumbers":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :goto_1
    return v9

    .line 1279
    .restart local v0    # "INemergencyNum":Ljava/lang/String;
    .restart local v1    # "INemergencyNumbers":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1286
    .end local v0    # "INemergencyNum":Ljava/lang/String;
    .end local v1    # "INemergencyNumbers":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->INSTANCE:Lmiui/telephony/TelephonyManagerEx;

    invoke-virtual {v9}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v6

    .line 1287
    .local v6, "phoneCount":I
    const/4 v9, 0x2

    if-ge v6, v9, :cond_3

    .line 1289
    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    goto :goto_1

    .line 1292
    :cond_3
    const/4 v7, 0x0

    .local v7, "slotId":I
    :goto_2
    if-ge v7, v6, :cond_7

    .line 1293
    sget-object v9, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v9, v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v8

    .line 1294
    .local v8, "subId":I
    if-eqz p2, :cond_4

    invoke-static {p0, v8, p1}, Lmiui/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    if-nez p2, :cond_6

    invoke-static {p0, v8, p1}, Lmiui/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1297
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 1292
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1300
    .end local v8    # "subId":I
    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1253
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/telephony/TelephonyManagerEx;->isLocalEmergencyNumberInternal(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private normalizeSlotId(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 69
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_0

    .line 70
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result p1

    .line 72
    .end local p1    # "slotId":I
    :cond_0
    return p1
.end method

.method private normalizeSubscriptionId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 76
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_0

    .line 77
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 79
    .end local p1    # "subId":I
    :cond_0
    return p1
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 3

    .prologue
    .line 1040
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelMissedCallsNotification()V
    .locals 3

    .prologue
    .line 1015
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error call ITelecomService#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1084
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1088
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1090
    const/4 v0, 0x0

    .line 1093
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    goto :goto_0
.end method

.method public enableDataConnectivityForSubscription(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1097
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1099
    const/4 v0, 0x0

    .line 1102
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v0

    goto :goto_0
.end method

.method public endCall()Z
    .locals 3

    .prologue
    .line 1031
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1035
    :goto_0
    return v1

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoForSlot(I)Ljava/util/List;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getAllCellInfoForSubscription(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfoForSubscription(I)Ljava/util/List;
    .locals 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 737
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getCallStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 742
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getCallStateForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 747
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationForSlot(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 255
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationForSubscription(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 276
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 752
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataActivityForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 757
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 759
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public getDataActivityForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 767
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 769
    const/4 v0, 0x0

    .line 772
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 777
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDataStateForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 782
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 787
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDataStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 792
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-eq p1, v0, :cond_0

    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 794
    const/4 v0, 0x0

    .line 797
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 168
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 173
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getDeviceIdForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 132
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 136
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 132
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 133
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceIdList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 109
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersionForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 114
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 185
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 189
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 185
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmiui/telephony/IMiuiTelephony;->getImei(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 186
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImeiForSlot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getImeiForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 194
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 143
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 147
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 143
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getImeiList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 144
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImeiList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 697
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getLine1NumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 702
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidForSlot(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 206
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 210
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 206
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v3

    sget-object v4, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lmiui/telephony/IMiuiTelephony;->getMeid(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 207
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMeidForSlot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMeidForSubscription(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 215
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMeidForSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 154
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 158
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 154
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    sget-object v2, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiui/telephony/IMiuiTelephony;->getMeidList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 155
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeidList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method public getMiuiDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 121
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 125
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 121
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lmiui/telephony/IMiuiTelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 122
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .locals 3

    .prologue
    .line 1199
    :try_start_0
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_1

    .line 1200
    const-class v2, Lmiui/telephony/TelephonyManagerEx;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :try_start_1
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 1202
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 1204
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    :cond_1
    :try_start_2
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_2

    .line 1208
    sget-object v1, Lmiui/telephony/TelephonyManagerEx;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1213
    :goto_0
    return-object v1

    .line 1204
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "getMiuiTelephony error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 821
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getMsisdnForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 834
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoForSlot(I)Ljava/util/List;
    .locals 1
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfoForSubscription(I)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkClass(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 557
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v0

    return v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 464
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 469
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 434
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 439
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 449
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 454
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 479
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 484
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 568
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lmiui/telephony/TelephonyManagerEx$Holder;->PHONE_COUNT:I

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 410
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getPhoneTypeForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 415
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 646
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 651
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 616
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 621
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSlot(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 631
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 636
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 661
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimSerialNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumberForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 666
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 596
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForSlot(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 601
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimStateForSubscription(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 606
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSimStateForSlot(I)I

    move-result v0

    return v0
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1177
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1178
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 1182
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 1178
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lmiui/telephony/IMiuiTelephony;->getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1179
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "getSpn error"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 682
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getSubscriberIdForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 687
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    .line 904
    .local v0, "slot":I
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 906
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz v0, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 908
    aget-object v3, v2, v0

    .line 911
    .end local v2    # "valArray":[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 722
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 727
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 732
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 712
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceMailNumberForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 717
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSlot(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 532
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->getVoiceNetworkTypeForSubscription(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkTypeForSubscription(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 539
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    .line 580
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 581
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const/4 v2, 0x1

    .line 586
    :goto_1
    return v2

    .line 580
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasIccCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 591
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isImsRegistered(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1114
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1115
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 1118
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return v2

    .line 1115
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-interface {v1, p1}, Lmiui/telephony/IMiuiTelephony;->isImsRegistered(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1116
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TelephonyManager"

    const-string v4, "isImsRegistered exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 494
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 506
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isNetworkRoamingForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoamingForSubscription(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 518
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOn()Z
    .locals 3

    .prologue
    .line 1047
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneCount()I

    move-result v1

    .line 1048
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1049
    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSlot(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1050
    const/4 v2, 0x1

    .line 1053
    :goto_1
    return v2

    .line 1048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isRadioOnForSlot(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1057
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->isRadioOnForSubscription(I)Z

    move-result v0

    return v0
.end method

.method public isRadioOnForSubscription(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1062
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1066
    :goto_0
    return v1

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "anotherNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1166
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1167
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 1171
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return v2

    .line 1167
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-interface {v1, p1, p2}, Lmiui/telephony/IMiuiTelephony;->isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1168
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "TelephonyManager"

    const-string v4, "isSameOperator error"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSmsCapable()Z
    .locals 1

    .prologue
    .line 882
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    .prologue
    .line 869
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public isVolteEnabledByPlatform()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1152
    const-string v3, "persist.dbg.volte_avail_ovr"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    sget-object v3, Lmiui/telephony/TelephonyManagerEx$Holder;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volte_feature_disabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v0, v2

    .line 1155
    .local v0, "disabledByGlobalsSetting":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1160
    .end local v0    # "disabledByGlobalsSetting":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 1153
    goto :goto_0

    .restart local v0    # "disabledByGlobalsSetting":Z
    :cond_2
    move v1, v2

    .line 1158
    goto :goto_1
.end method

.method public isVolteEnabledByUser()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1128
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1129
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    .line 1132
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return v2

    .line 1129
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-interface {v1}, Lmiui/telephony/IMiuiTelephony;->isVolteEnabledByUser()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1130
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TelephonyManager"

    const-string v4, "isVolteEnabledByUser exception"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVtEnabledByPlatform()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1141
    const-string v1, "persist.dbg.vt_avail_ovr"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    const/4 v0, 0x1

    .line 1144
    :cond_0
    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 845
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 846
    return-void
.end method

.method public listenForSlot(ILandroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .prologue
    .line 850
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 851
    .local v0, "subId":I
    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V

    .line 852
    return-void
.end method

.method public listenForSubscription(ILandroid/telephony/PhoneStateListener;I)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p3, "events"    # I

    .prologue
    .line 856
    invoke-virtual {p2, p1}, Landroid/telephony/PhoneStateListener;->updateSubscription(I)I

    move-result v0

    .line 857
    .local v0, "old":I
    sget-object v1, Lmiui/telephony/TelephonyManagerEx$Holder;->TELEPHONY_MANAGER:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p2, p3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 858
    invoke-virtual {p2, v0}, Landroid/telephony/PhoneStateListener;->updateSubscription(I)I

    .line 859
    return-void
.end method

.method public onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1187
    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;

    move-result-object v1

    .line 1188
    .local v1, "telephony":Lmiui/telephony/IMiuiTelephony;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 1192
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :goto_0
    return-object v2

    .line 1188
    .restart local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lmiui/telephony/IMiuiTelephony;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1189
    .end local v1    # "telephony":Lmiui/telephony/IMiuiTelephony;
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TelephonyManager"

    const-string v3, "onOperatorNumericOrNameSet error"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, p3

    .line 1192
    goto :goto_0
.end method

.method public putTelephonySetting(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2c

    .line 929
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v2

    .line 931
    .local v2, "slot":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 932
    .local v0, "data":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 933
    .local v5, "valArray":[Ljava/lang/String;
    invoke-static {p2, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, "v":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 936
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 940
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 941
    const-string v3, ""

    .line 942
    .local v3, "str":Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 943
    aget-object v3, v5, v1

    .line 945
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    if-nez p4, :cond_3

    const-string p4, ""

    .end local p4    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    if-eqz v5, :cond_4

    .line 952
    add-int/lit8 v1, v2, 0x1

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 953
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 956
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method public setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSlotId(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/telephony/TelephonyManagerEx;->showCallScreenWithDialpad(Z)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1075
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    const/4 v1, 0x1

    .line 1080
    :goto_0
    return v1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelecomService#showInCallScreen"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 1023
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    :goto_0
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error call ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 980
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSlot(ILjava/lang/String;)[I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 984
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPinReportResultForSubscription(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSubscription(ILjava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 989
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 993
    :goto_0
    return-object v1

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 993
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 997
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSlot(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1001
    sget-object v0, Lmiui/telephony/TelephonyManagerEx$Holder;->SUBSCRIPTION_MANAGER:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/telephony/TelephonyManagerEx;->supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSubscription(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1006
    :try_start_0
    invoke-direct {p0}, Lmiui/telephony/TelephonyManagerEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, p1}, Lmiui/telephony/TelephonyManagerEx;->normalizeSubscriptionId(I)I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1010
    :goto_0
    return-object v1

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method
