.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->reorderList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field final synthetic val$orderMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->val$orderMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrder(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I
    .locals 4
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 767
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->val$orderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 769
    .local v1, "integer":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const v2, 0x7fffffff

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I
    .locals 2
    .param p1, "o1"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p2, "o2"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->getOrder(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->getOrder(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 760
    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$1;->compare(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)I

    move-result v0

    return v0
.end method
