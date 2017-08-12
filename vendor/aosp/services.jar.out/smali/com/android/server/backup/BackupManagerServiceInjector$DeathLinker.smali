.class Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathLinker"
.end annotation


# instance fields
.field private mAgentBinder:Landroid/os/IBinder;

.field private mCallerFd:I

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "agentBinder"    # Landroid/os/IBinder;
    .param p2, "fd"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    .line 108
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mAgentBinder:Landroid/os/IBinder;

    .line 109
    iput p2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    .line 110
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 118
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 120
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    :try_start_0
    iget v2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->opComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    const/16 v2, 0x8

    iget v3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

    .line 125
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "binderDied failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    .line 114
    return-void
.end method
