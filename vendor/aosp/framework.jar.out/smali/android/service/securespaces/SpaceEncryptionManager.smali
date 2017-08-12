.class public Landroid/service/securespaces/SpaceEncryptionManager;
.super Ljava/lang/Object;
.source "SpaceEncryptionManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "spaceencryption"

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 58
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 61
    :goto_0
    return v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsMountRemovable(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 35
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 38
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMountRemovable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsOverwrite(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 88
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 91
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsOverwrite(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    :goto_0
    return v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsUnmount(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 66
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 69
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 72
    :goto_0
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static ecryptfsUnmountRemovable(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 45
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 48
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmountRemovable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsUpdate(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 80
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 83
    :goto_0
    return v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static isAuthProtected(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 121
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 124
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->isAuthProtected(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDataDirectoryTmpfs()Z
    .locals 4

    .prologue
    .line 263
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 266
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1}, Landroid/service/securespaces/ISpaceEncryptionService;->isDataDirectoryTmpfs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 269
    :goto_0
    return v2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static needAirlockUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 132
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 135
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needAirlockUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 138
    :goto_0
    return v2

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needsEcryptfsMount(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 99
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 102
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needsEcryptfsMount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 105
    :goto_0
    return v2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p0, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 110
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 113
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->processEncryption(Landroid/content/pm/UserInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 116
    :goto_0
    return v2

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAirlockWallpaperToUser(I)V
    .locals 4
    .param p0, "userIdOrig"    # I

    .prologue
    .line 154
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 157
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setAirlockWallpaperToUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setOpAddExcludeFromWipe(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 255
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpAddExcludeFromWipe(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 258
    :goto_0
    return v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCleanUserData(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 241
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 244
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCleanUserData(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 247
    :goto_0
    return v2

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpClearUserData(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 233
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpClearUserData(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 236
    :goto_0
    return v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCreateUserConfig(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 219
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 222
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 225
    :goto_0
    return v2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpCreateUserData(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 167
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserData(ILjava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 170
    :goto_0
    return v2

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpDeleteCacheFiles(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 200
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCacheFiles(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpDeleteCodeCacheFiles(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 208
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 211
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCodeCacheFiles(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 214
    :goto_0
    return v2

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpLinkNativeLibraryDir(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "dataPath"    # Ljava/lang/String;
    .param p2, "newNativePath32"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 189
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpLinkNativeLibraryDir(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 192
    :goto_0
    return v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setOpRemove(ILjava/lang/String;)Z
    .locals 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 178
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpRemove(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 181
    :goto_0
    return v2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static switchUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 143
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 146
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 149
    :goto_0
    return v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static wipeRemovableUserDir(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 274
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 277
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->wipeRemovableUserDir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "SpaceEncryptionManager"

    const-string v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
