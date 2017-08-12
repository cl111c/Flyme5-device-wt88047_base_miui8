.class public Lmiui/telephony/MiuiTelephony;
.super Lmiui/telephony/MiuiTelephonyBase;
.source "MiuiTelephony.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static final PHONE_COUNT:I

.field static sContext:Landroid/content/Context;

.field private static sInstance:Lmiui/telephony/MiuiTelephony;


# instance fields
.field private mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "MiuiTelephony"

    sput-object v0, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    .line 35
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lmiui/telephony/MiuiTelephonyBase;-><init>()V

    .line 43
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->init()V

    .line 44
    new-instance v0, Lmiui/telephony/ImeiMeidSource;

    invoke-direct {v0}, Lmiui/telephony/ImeiMeidSource;-><init>()V

    iput-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    .line 45
    return-void
.end method

.method public static getInstance()Lmiui/telephony/MiuiTelephony;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    .line 169
    sget v0, Lmiui/telephony/MiuiTelephony;->PHONE_COUNT:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sput-object p0, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    .line 53
    new-instance v1, Lmiui/telephony/MiuiTelephony;

    invoke-direct {v1}, Lmiui/telephony/MiuiTelephony;-><init>()V

    sput-object v1, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    .line 56
    :try_start_0
    const-string v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sget-object v2, Lmiui/telephony/MiuiTelephony;->sInstance:Lmiui/telephony/MiuiTelephony;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->setMiuiTelephony(Lmiui/telephony/IMiuiTelephony;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setMiuiTelephony error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 158
    :try_start_0
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return v3

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 174
    const-string v5, "MiuiTelephony:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    iget-object v5, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v5, p2}, Lmiui/telephony/ImeiMeidSource;->dump(Ljava/io/PrintWriter;)V

    .line 176
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lmiui/telephony/DefaultSimManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 178
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 179
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 181
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMiuiIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getDeviceIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getImei(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/ImeiMeidSource;->getImei(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getImeiList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/ImeiMeidSource;->getMeid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lmiui/telephony/MiuiTelephony;->mImeiMeidSource:Lmiui/telephony/ImeiMeidSource;

    invoke-virtual {v0, p1}, Lmiui/telephony/ImeiMeidSource;->getMeidList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpn(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "longName"    # Z

    .prologue
    .line 138
    invoke-static {p1, p2, p3, p4}, Lmiui/telephony/ServiceProviderUtils;->get(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemDefaultSlotId()I
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/DefaultSimManager;->getSystemDefaultSlotId()I

    move-result v0

    return v0
.end method

.method public isIccCardActivate(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isImsRegistered(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isImsRegistered exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSameOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "otherNumeric"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p1, p2}, Lmiui/telephony/ServiceProviderUtils;->isSameServiceProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabledByUser()Z
    .locals 3

    .prologue
    .line 124
    :try_start_0
    sget-object v1, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/telephony/MiuiTelephony;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isVolteEnabledByUser exception"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1, p2, p3}, Lmiui/telephony/ServiceProviderUtils;->onOperatorNumericOrNameSet(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultDataSlotId(ILjava/lang/String;)Z
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/DefaultSimManager;->setDefaultDataSlotId(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultVoiceSlotId(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getInstance()Lmiui/telephony/DefaultSimManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/telephony/DefaultSimManager;->setDefaultVoiceSlotId(ILjava/lang/String;)V

    .line 66
    return-void
.end method
