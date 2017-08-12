.class Landroid/hardware/fingerprint/FingerprintManager$4;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/app/fingerprint/FingerprintInterface$EnrolCallback;


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
    .line 497
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrolled(I)V
    .locals 2
    .param p1, "fingerId"    # I

    .prologue
    .line 508
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$300(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 509
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$300(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "Enrollment error!!"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    .line 505
    return-void
.end method

.method public onProgress(II)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "progress"    # I

    .prologue
    .line 500
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$4;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$300(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 501
    return-void
.end method
