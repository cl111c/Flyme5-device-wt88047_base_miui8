.class Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate$1;
.super Ljava/lang/Object;
.source "MiuiKeyguardServiceDelegate.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;->onScreenTurnedOnWithoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate$1;->this$0:Lcom/android/internal/policy/impl/MiuiKeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 45
    return-void
.end method
