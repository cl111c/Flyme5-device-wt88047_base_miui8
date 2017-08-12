.class Landroid/hardware/fingerprint/FingerprintManager$3;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/app/fingerprint/FingerprintInterface$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$3;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 491
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$3;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$300(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    const-string v1, "Capture failed!!"

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 492
    return-void
.end method

.method public onInput()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public onWaitingForInput()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method
