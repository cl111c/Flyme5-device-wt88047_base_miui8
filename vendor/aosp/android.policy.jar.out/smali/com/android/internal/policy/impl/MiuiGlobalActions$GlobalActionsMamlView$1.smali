.class Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView$1;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView$1;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView$1;->val$this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView$1;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$GlobalActionsMamlView;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->dismiss()V

    .line 386
    return-void
.end method
