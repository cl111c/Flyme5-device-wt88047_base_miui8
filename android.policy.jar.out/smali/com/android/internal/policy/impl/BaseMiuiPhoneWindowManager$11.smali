.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->hideBootMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1751
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mMiuiBootMsgDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2602(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1752
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootProgress:Landroid/widget/ProgressBar;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2702(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1753
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootTextView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2902(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1754
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->mBootText:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2802(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1756
    :cond_0
    return-void
.end method
