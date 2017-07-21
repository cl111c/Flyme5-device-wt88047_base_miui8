.class public Lmiui/securitycenter/applicationlock/ApplicationLockHelper;
.super Ljava/lang/Object;
.source "ApplicationLockHelper.java"


# instance fields
.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 20
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 21
    return-void
.end method


# virtual methods
.method public checkLockPattern(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->checkAccessControlPattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAppLock()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->clearLock(Z)V

    .line 45
    return-void
.end method

.method public getLockoutAttempt()J
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    return-wide v0
.end method

.method public isVisiblePatternLock()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    return v0
.end method

.method public saveLockPatternExists()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->haveAccessControlPattern()Z

    move-result v0

    return v0
.end method

.method public setLockoutAttempt()J
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/ApplicationLockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    return-wide v0
.end method
