.class public Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;
.super Lcom/android/internal/policy/impl/AbstractKeyguardServiceDelegate;
.source "MiuiKeyguardServiceDelegate.java"


# instance fields
.field protected mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field protected mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field protected mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V
    .locals 0
    .param p1, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
    .param p3, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AbstractKeyguardServiceDelegate;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 17
    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 18
    iput-object p3, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    return-void
.end method


# virtual methods
.method protected enableUserActivity(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 22
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 35
    return-void
.end method

.method public onScreenTurnedOnWithoutListener()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate$1;-><init>(Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "isDocked"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public pokeWakelock()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 52
    return-void
.end method
