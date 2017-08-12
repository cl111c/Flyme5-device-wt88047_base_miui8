.class final Landroid/app/BackStackRecord;
.super Landroid/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackRecord$TransitionState;,
        Landroid/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Landroid/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/app/FragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManagerImpl;

    .prologue
    .line 408
    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 409
    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    .line 410
    return-void
.end method

.method static synthetic access$000(Landroid/app/BackStackRecord;Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/BackStackRecord;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/transition/Transition;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Landroid/app/BackStackRecord;
    .param p1, "x1"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/Fragment;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BackStackRecord;->mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/BackStackRecord;Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/BackStackRecord;
    .param p1, "x1"    # Landroid/util/ArrayMap;
    .param p2, "x2"    # Landroid/app/BackStackRecord$TransitionState;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/BackStackRecord;
    .param p1, "x1"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "x2"    # Landroid/app/Fragment;
    .param p3, "x3"    # Landroid/app/Fragment;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/util/ArrayMap;

    .prologue
    .line 208
    invoke-direct/range {p0 .. p5}, Landroid/app/BackStackRecord;->callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/BackStackRecord;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/BackStackRecord;
    .param p1, "x1"    # Landroid/transition/Transition;
    .param p2, "x2"    # Landroid/app/BackStackRecord$TransitionState;

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Landroid/app/BackStackRecord;->setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V

    return-void
.end method

.method public static addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1432
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v6, p0, Landroid/transition/TransitionSet;

    if-eqz v6, :cond_0

    move-object v4, p0

    .line 1433
    check-cast v4, Landroid/transition/TransitionSet;

    .line 1434
    .local v4, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v4}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1435
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1436
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1437
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1439
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v4    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/BackStackRecord;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1440
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v5

    .line 1441
    .local v5, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {v5}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1443
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1444
    .local v3, "numViews":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1445
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1444
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1449
    .end local v1    # "i":I
    .end local v3    # "numViews":I
    .end local v5    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "enterTransition"    # Landroid/transition/Transition;
    .param p3, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p4, "overallTransition"    # Landroid/transition/Transition;
    .param p5, "container"    # Landroid/view/View;
    .param p6, "inFragment"    # Landroid/app/Fragment;
    .param p7, "outFragment"    # Landroid/app/Fragment;
    .param p9, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    .local p8, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1127
    const/4 v12, 0x0

    .line 1173
    :goto_0
    return-object v12

    .line 1129
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v12, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    new-instance v0, Landroid/app/BackStackRecord$1;

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object v7, p1

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p7

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v12}, Landroid/app/BackStackRecord$1;-><init>(Landroid/app/BackStackRecord;Landroid/view/View;Ljava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;ZLjava/util/ArrayList;Landroid/app/Fragment;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    invoke-virtual {v13, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;
    .locals 7
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;Z)",
            "Landroid/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v2, Landroid/app/BackStackRecord$TransitionState;

    invoke-direct {v2, p0}, Landroid/app/BackStackRecord$TransitionState;-><init>(Landroid/app/BackStackRecord;)V

    .line 1012
    .local v2, "state":Landroid/app/BackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1015
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 1016
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "containerId":I
    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1017
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1015
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1022
    .end local v1    # "containerId":I
    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 1023
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1024
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1025
    invoke-direct/range {v0 .. v5}, Landroid/app/BackStackRecord;->configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1022
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1029
    .end local v1    # "containerId":I
    :cond_2
    return-object v2
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-interface {v4}, Landroid/app/FragmentContainer;->hasView()Z

    move-result v4

    if-nez v4, :cond_1

    .line 923
    :cond_0
    return-void

    .line 881
    :cond_1
    iget-object v3, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 882
    .local v3, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_0

    .line 883
    iget v4, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 921
    :goto_1
    iget-object v3, v3, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 885
    :pswitch_0
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 888
    :pswitch_1
    iget-object v0, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 889
    .local v0, "f":Landroid/app/Fragment;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 890
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 891
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 892
    .local v2, "old":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    iget v4, v2, Landroid/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 893
    :cond_2
    if-ne v2, v0, :cond_4

    .line 894
    const/4 v0, 0x0

    .line 890
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 896
    :cond_4
    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_3

    .line 901
    .end local v1    # "i":I
    .end local v2    # "old":Landroid/app/Fragment;
    :cond_5
    invoke-direct {p0, p2, v0}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 905
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_2
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 908
    :pswitch_3
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 911
    :pswitch_4
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 914
    :pswitch_5
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v4}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 917
    :pswitch_6
    iget-object v4, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p2, v4}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private callSharedElementEnd(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Landroid/app/Fragment;ZLandroid/util/ArrayMap;)V
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "outFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Landroid/app/Fragment;",
            "Z",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1178
    .local p5, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p4, :cond_0

    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1181
    .local v1, "sharedElementCallback":Landroid/app/SharedElementCallback;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1182
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1183
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1184
    return-void

    .line 1178
    .end local v0    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    goto :goto_0
.end method

.method private static captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "exitTransition"    # Landroid/transition/Transition;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p3, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Landroid/app/Fragment;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1067
    .local v1, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_1

    .line 1068
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .restart local v1    # "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1070
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->captureTransitioningViews(Ljava/util/List;)V

    .line 1071
    if-eqz p2, :cond_0

    .line 1072
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1074
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1075
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    invoke-static {p0, v1}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1079
    .end local v0    # "root":Landroid/view/View;
    :cond_1
    return-object v1
.end method

.method private static cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 0
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1033
    if-eqz p0, :cond_0

    .line 1034
    invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    .line 1036
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILandroid/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 30
    .param p1, "containerId"    # I
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1285
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v3, v3, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/app/FragmentContainer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1286
    .local v8, "sceneRoot":Landroid/view/ViewGroup;
    if-eqz v8, :cond_0

    .line 1287
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Fragment;

    .line 1288
    .local v9, "inFragment":Landroid/app/Fragment;
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    .line 1290
    .local v10, "outFragment":Landroid/app/Fragment;
    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/app/BackStackRecord;->getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v5

    .line 1291
    .local v5, "enterTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    invoke-static {v9, v10, v0}, Landroid/app/BackStackRecord;->getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v6

    .line 1293
    .local v6, "sharedElementTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/app/BackStackRecord;->getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v19

    .line 1295
    .local v19, "exitTransition":Landroid/transition/Transition;
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v19, :cond_1

    .line 1360
    .end local v5    # "enterTransition":Landroid/transition/Transition;
    .end local v6    # "sharedElementTransition":Landroid/transition/Transition;
    .end local v9    # "inFragment":Landroid/app/Fragment;
    .end local v10    # "outFragment":Landroid/app/Fragment;
    .end local v19    # "exitTransition":Landroid/transition/Transition;
    :cond_0
    :goto_0
    return-void

    .line 1299
    .restart local v5    # "enterTransition":Landroid/transition/Transition;
    .restart local v6    # "sharedElementTransition":Landroid/transition/Transition;
    .restart local v9    # "inFragment":Landroid/app/Fragment;
    .restart local v10    # "outFragment":Landroid/app/Fragment;
    .restart local v19    # "exitTransition":Landroid/transition/Transition;
    :cond_1
    if-eqz v5, :cond_2

    .line 1300
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1302
    :cond_2
    const/16 v27, 0x0

    .line 1303
    .local v27, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v13, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v6, :cond_3

    .line 1305
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v10, v2}, Landroid/app/BackStackRecord;->remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    move-result-object v27

    .line 1306
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1308
    invoke-static {v6, v13}, Landroid/app/BackStackRecord;->addTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1311
    if-eqz p3, :cond_8

    iget-object v0, v10, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    move-object/from16 v25, v0

    .line 1314
    .local v25, "callback":Landroid/app/SharedElementCallback;
    :goto_1
    new-instance v28, Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1315
    .local v28, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1316
    .local v29, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1319
    .end local v25    # "callback":Landroid/app/SharedElementCallback;
    .end local v28    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v10, v1, v3}, Landroid/app/BackStackRecord;->captureExitingViews(Landroid/transition/Transition;Landroid/app/Fragment;Landroid/util/ArrayMap;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1321
    .local v20, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1322
    :cond_4
    const/16 v19, 0x0

    .line 1326
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    if-eqz v27, :cond_7

    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    .line 1328
    .local v26, "epicenterView":Landroid/view/View;
    if-eqz v26, :cond_7

    .line 1329
    if-eqz v19, :cond_6

    .line 1330
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 1332
    :cond_6
    if-eqz v6, :cond_7

    .line 1333
    move-object/from16 v0, v26

    invoke-static {v6, v0}, Landroid/app/BackStackRecord;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 1338
    .end local v26    # "epicenterView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-static {v5, v0, v6, v9, v1}, Landroid/app/BackStackRecord;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;

    move-result-object v7

    .line 1341
    .local v7, "transition":Landroid/transition/Transition;
    if-eqz v7, :cond_0

    .line 1342
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v12, p3

    .line 1343
    invoke-direct/range {v3 .. v13}, Landroid/app/BackStackRecord;->addTransitionTargets(Landroid/app/BackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;Ljava/util/ArrayList;ZLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1347
    .local v18, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/transition/Transition;->setNameOverrides(Landroid/util/ArrayMap;)V

    .line 1350
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v7, v3, v4}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1352
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v11, v1, v7}, Landroid/app/BackStackRecord;->excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V

    .line 1353
    invoke-static {v8, v7}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1355
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/BackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v14, p0

    move-object v15, v8

    move-object/from16 v17, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v13

    move-object/from16 v23, v7

    move-object/from16 v24, v11

    invoke-direct/range {v14 .. v24}, Landroid/app/BackStackRecord;->removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1311
    .end local v7    # "transition":Landroid/transition/Transition;
    .end local v11    # "hiddenFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v18    # "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v20    # "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    iget-object v0, v9, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    move-object/from16 v25, v0

    goto/16 :goto_1
.end method

.method private doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 469
    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iput-object v1, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 471
    if-eqz p3, :cond_1

    .line 472
    iget-object v1, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 477
    :cond_0
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 480
    :cond_1
    if-eqz p1, :cond_3

    .line 481
    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eq v1, p1, :cond_2

    .line 482
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/app/Fragment;->mFragmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_2
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    .line 489
    :cond_3
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 490
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    iput p4, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 491
    iput-object p2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 492
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 493
    return-void
.end method

.method private excludeHiddenFragments(Ljava/util/ArrayList;ILandroid/transition/Transition;)V
    .locals 4
    .param p2, "containerId"    # I
    .param p3, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I",
            "Landroid/transition/Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1514
    .local p1, "hiddenFragmentViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1516
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1517
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/app/Fragment;->mContainerId:I

    if-ne v2, p2, :cond_0

    .line 1519
    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1520
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1521
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1522
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    :cond_1
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1526
    iget-object v2, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1531
    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static getEnterTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    .line 1040
    if-nez p0, :cond_0

    .line 1041
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1
.end method

.method private static getExitTransition(Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "outFragment"    # Landroid/app/Fragment;
    .param p1, "isBack"    # Z

    .prologue
    .line 1048
    if-nez p0, :cond_0

    .line 1049
    const/4 v0, 0x0

    .line 1051
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1
.end method

.method private static getSharedElementTransition(Landroid/app/Fragment;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Landroid/app/Fragment;
    .param p1, "outFragment"    # Landroid/app/Fragment;
    .param p2, "isBack"    # Z

    .prologue
    .line 1057
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1058
    :cond_0
    const/4 v0, 0x0

    .line 1060
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/app/Fragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/app/BackStackRecord;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1
.end method

.method private static hasSimpleTarget(Landroid/transition/Transition;)Z
    .locals 1
    .param p0, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1452
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/app/BackStackRecord;->isNullOrEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNullOrEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 1458
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "inFragment"    # Landroid/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Z)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1496
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1497
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1498
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1499
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1500
    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 1501
    if-eqz p3, :cond_1

    .line 1502
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1509
    :cond_0
    :goto_0
    return-object v0

    .line 1505
    :cond_1
    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private mapSharedElementsIn(Landroid/app/BackStackRecord$TransitionState;ZLandroid/app/Fragment;)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Z",
            "Landroid/app/Fragment;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1200
    invoke-direct {p0, p1, p3, p2}, Landroid/app/BackStackRecord;->mapEnteringSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1204
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 1205
    iget-object v1, p3, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1207
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    .line 1213
    :goto_0
    return-object v0

    .line 1209
    :cond_0
    iget-object v1, p3, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1211
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    goto :goto_0
.end method

.method private static mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/app/Fragment;Z)Landroid/transition/Transition;
    .locals 7
    .param p0, "enterTransition"    # Landroid/transition/Transition;
    .param p1, "exitTransition"    # Landroid/transition/Transition;
    .param p2, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p3, "inFragment"    # Landroid/app/Fragment;
    .param p4, "isBack"    # Z

    .prologue
    .line 1219
    const/4 v0, 0x1

    .line 1220
    .local v0, "overlap":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1221
    if-eqz p4, :cond_4

    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    .line 1230
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 1232
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 1233
    .local v4, "transitionSet":Landroid/transition/TransitionSet;
    if-eqz p0, :cond_1

    .line 1234
    invoke-virtual {v4, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1236
    :cond_1
    if-eqz p1, :cond_2

    .line 1237
    invoke-virtual {v4, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1239
    :cond_2
    if-eqz p2, :cond_3

    .line 1240
    invoke-virtual {v4, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1242
    :cond_3
    move-object v3, v4

    .line 1268
    .end local v4    # "transitionSet":Landroid/transition/TransitionSet;
    .local v3, "transition":Landroid/transition/Transition;
    :goto_1
    return-object v3

    .line 1221
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_4
    invoke-virtual {p3}, Landroid/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    .line 1246
    :cond_5
    const/4 v1, 0x0

    .line 1247
    .local v1, "staggered":Landroid/transition/Transition;
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    .line 1248
    new-instance v5, Landroid/transition/TransitionSet;

    invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v5, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 1257
    :cond_6
    :goto_2
    if-eqz p2, :cond_a

    .line 1258
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 1259
    .local v2, "together":Landroid/transition/TransitionSet;
    if-eqz v1, :cond_7

    .line 1260
    invoke-virtual {v2, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1262
    :cond_7
    invoke-virtual {v2, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1263
    move-object v3, v2

    .line 1264
    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1

    .line 1252
    .end local v2    # "together":Landroid/transition/TransitionSet;
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_8
    if-eqz p1, :cond_9

    .line 1253
    move-object v1, p1

    goto :goto_2

    .line 1254
    :cond_9
    if-eqz p0, :cond_6

    .line 1255
    move-object v1, p0

    goto :goto_2

    .line 1265
    :cond_a
    move-object v3, v1

    .restart local v3    # "transition":Landroid/transition/Transition;
    goto :goto_1
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1472
    .local v2, "remappedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1473
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1474
    .local v1, "numKeys":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1475
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1477
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1478
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1482
    .end local v0    # "i":I
    .end local v1    # "numKeys":I
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method private remapSharedElements(Landroid/app/BackStackRecord$TransitionState;Landroid/app/Fragment;Z)Landroid/util/ArrayMap;
    .locals 4
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p2, "outFragment"    # Landroid/app/Fragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/app/Fragment;",
            "Z)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1084
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1085
    .local v0, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1086
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findNamedViews(Ljava/util/Map;)V

    .line 1087
    if-eqz p3, :cond_1

    .line 1088
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 1095
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 1096
    iget-object v1, p2, Landroid/app/Fragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1098
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    .line 1105
    :goto_1
    return-object v0

    .line 1090
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Landroid/app/BackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    .line 1100
    :cond_2
    iget-object v1, p2, Landroid/app/Fragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1102
    invoke-direct {p0, p1, v0, v3}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V

    goto :goto_1
.end method

.method private removeTargetedViewsFromTransitions(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "nonExistingView"    # Landroid/view/View;
    .param p3, "enterTransition"    # Landroid/transition/Transition;
    .param p5, "exitTransition"    # Landroid/transition/Transition;
    .param p7, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p9, "overallTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1372
    .local p4, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p8, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p10, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p9, :cond_0

    .line 1373
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    new-instance v0, Landroid/app/BackStackRecord$2;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/app/BackStackRecord$2;-><init>(Landroid/app/BackStackRecord;Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V

    invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1396
    :cond_0
    return-void
.end method

.method public static removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "transition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1404
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v5, p0, Landroid/transition/TransitionSet;

    if-eqz v5, :cond_0

    move-object v3, p0

    .line 1405
    check-cast v3, Landroid/transition/TransitionSet;

    .line 1406
    .local v3, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    .line 1407
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1408
    invoke-virtual {v3, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v0

    .line 1409
    .local v0, "child":Landroid/transition/Transition;
    invoke-static {v0, p1}, Landroid/app/BackStackRecord;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v0    # "child":Landroid/transition/Transition;
    .end local v1    # "i":I
    .end local v2    # "numTransitions":I
    .end local v3    # "set":Landroid/transition/TransitionSet;
    :cond_0
    invoke-static {p0}, Landroid/app/BackStackRecord;->hasSimpleTarget(Landroid/transition/Transition;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1412
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v4

    .line 1413
    .local v4, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1416
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1417
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1416
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1421
    .end local v1    # "i":I
    .end local v4    # "targets":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_1
    return-void
.end method

.method private setBackNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V
    .locals 7
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1689
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1690
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1691
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1692
    .local v3, "source":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1693
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1694
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1695
    invoke-virtual {v5}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    .line 1696
    .local v4, "target":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 1697
    iget-object v6, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v6, v3, v4}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    .end local v4    # "target":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1699
    .restart local v4    # "target":Ljava/lang/String;
    :cond_1
    iget-object v6, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v6, v4, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1703
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "target":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private static setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1534
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1535
    .local v0, "epicenter":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1537
    new-instance v1, Landroid/app/BackStackRecord$3;

    invoke-direct {v1, v0}, Landroid/app/BackStackRecord$3;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1543
    return-void
.end method

.method private setEpicenterIn(Landroid/util/ArrayMap;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/BackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1189
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1191
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1192
    iput-object v0, p2, Landroid/app/BackStackRecord$TransitionState;->enteringEpicenterView:Landroid/view/View;

    .line 1195
    .end local v0    # "epicenter":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    if-eqz p1, :cond_0

    .line 850
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    .line 851
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 853
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 856
    .end local v0    # "containerId":I
    :cond_0
    return-void
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V
    .locals 1
    .param p2, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, "fragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    if-eqz p2, :cond_0

    .line 860
    iget v0, p2, Landroid/app/Fragment;->mContainerId:I

    .line 861
    .local v0, "containerId":I
    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 865
    .end local v0    # "containerId":I
    :cond_0
    return-void
.end method

.method private static setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1665
    .local p0, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1666
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1667
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1668
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1674
    .end local v0    # "index":I
    :cond_0
    :goto_1
    return-void

    .line 1666
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1672
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Landroid/util/ArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1707
    .local p2, "namedViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1708
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1709
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1710
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 1711
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1712
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v4, v2, v3}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1714
    :cond_0
    iget-object v4, p1, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v4, v3, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1717
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1678
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1679
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1680
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1681
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1682
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BackStackRecord$TransitionState;->nameOverrides:Landroid/util/ArrayMap;

    invoke-static {v3, v1, v2}, Landroid/app/BackStackRecord;->setNameOverride(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    .end local v0    # "i":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSharedElementEpicenter(Landroid/transition/Transition;Landroid/app/BackStackRecord$TransitionState;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;

    .prologue
    .line 1546
    new-instance v0, Landroid/app/BackStackRecord$4;

    invoke-direct {v0, p0, p2}, Landroid/app/BackStackRecord$4;-><init>(Landroid/app/BackStackRecord;Landroid/app/BackStackRecord$TransitionState;)V

    invoke-virtual {p1, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1558
    return-void
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 459
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 460
    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 465
    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 455
    return-object p0
.end method

.method addOp(Landroid/app/BackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Landroid/app/BackStackRecord$Op;

    .prologue
    .line 439
    iget-object v0, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 440
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 446
    :goto_0
    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    .line 447
    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    .line 448
    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    .line 449
    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    .line 450
    iget v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    .line 451
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    .line 443
    iget-object v0, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    .line 444
    iput-object p1, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 582
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 633
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    .line 638
    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 639
    return-object p0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 545
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 546
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x7

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 547
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 548
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 550
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 680
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_1

    .line 708
    :cond_0
    return-void

    .line 683
    :cond_1
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 684
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_2
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 688
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_0

    .line 689
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v3, :cond_3

    .line 690
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    .line 691
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 692
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_3
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 697
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 698
    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 699
    .local v2, "r":Landroid/app/Fragment;
    iget v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/app/Fragment;->mBackStackNesting:I

    .line 700
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 701
    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 706
    .end local v0    # "i":I
    .end local v2    # "r":Landroid/app/Fragment;
    :cond_5
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto/16 :goto_0
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-interface {v2}, Landroid/app/FragmentContainer;->hasView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 972
    :cond_0
    return-void

    .line 939
    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 940
    .local v1, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_0

    .line 941
    iget v2, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 970
    :goto_1
    iget-object v1, v1, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 943
    :pswitch_0
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 946
    :pswitch_1
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 947
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 948
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    .line 947
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 951
    .end local v0    # "i":I
    :cond_2
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 954
    :pswitch_2
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 957
    :pswitch_3
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 960
    :pswitch_4
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 963
    :pswitch_5
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {p0, p2, v2}, Landroid/app/BackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 966
    :pswitch_6
    iget-object v2, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-static {p1, v2}, Landroid/app/BackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/app/Fragment;)V

    goto :goto_1

    .line 941
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 719
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    if-eqz v2, :cond_0

    .line 720
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 722
    :cond_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 723
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v0, Landroid/util/LogWriter;

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    invoke-direct {v0, v2, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 725
    .local v0, "logw":Landroid/util/LogWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 726
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 727
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 729
    .end local v0    # "logw":Landroid/util/LogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    .line 730
    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_2

    .line 731
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    move-result v2

    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 735
    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 736
    iget v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v2

    .line 733
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 536
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 537
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x6

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 538
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 539
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 541
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 647
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 651
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 652
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 277
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 280
    if-eqz p3, :cond_8

    .line 281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget-object v5, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    const-string v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v5, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 286
    const-string v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-boolean v5, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    if-eqz v5, :cond_0

    .line 289
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    :cond_0
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    if-nez v5, :cond_1

    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    if-eqz v5, :cond_2

    .line 296
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    const-string v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    :cond_2
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v5, :cond_3

    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v5, :cond_4

    .line 303
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    const-string v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    :cond_4
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 310
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    :cond_6
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 317
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    const-string v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 325
    :cond_8
    iget-object v5, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    if-eqz v5, :cond_10

    .line 326
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    const-string v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 330
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    const/4 v3, 0x0

    .line 331
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    .line 333
    iget v5, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 365
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 369
    if-eqz p3, :cond_c

    .line 370
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    .line 371
    :cond_9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget v5, v4, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 374
    const-string v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    iget v5, v4, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    :cond_a
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    .line 378
    :cond_b
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    const-string v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget v5, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    :cond_c
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 387
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 388
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 389
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    :goto_3
    iget-object v5, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 335
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string v0, "NULL"

    .line 336
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 338
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ADD"

    .line 339
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 341
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REPLACE"

    .line 342
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 344
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REMOVE"

    .line 345
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 347
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "HIDE"

    .line 348
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 350
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SHOW"

    .line 351
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 353
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "DETACH"

    .line 354
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 356
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "ATTACH"

    .line 357
    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 391
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    .line 392
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 397
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 402
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    .line 403
    add-int/lit8 v3, v3, 0x1

    .line 404
    goto/16 :goto_0

    .line 406
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_10
    return-void

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 432
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 1724
    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 518
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 519
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 520
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 521
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 523
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1732
    iget v0, p0, Landroid/app/BackStackRecord;->mNumOp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popFromBackStack(ZLandroid/app/BackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/app/BackStackRecord$TransitionState;
    .locals 11
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Landroid/app/BackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/app/BackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;)",
            "Landroid/app/BackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1562
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1563
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "popFromBackStack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v2, Landroid/util/LogWriter;

    const/4 v6, 0x2

    const-string v7, "FragmentManager"

    invoke-direct {v2, v6, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 1565
    .local v2, "logw":Landroid/util/LogWriter;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-direct {v5, v2, v6, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1566
    .local v5, "pw":Ljava/io/PrintWriter;
    const-string v6, "  "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v5, v8}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 1570
    .end local v2    # "logw":Landroid/util/LogWriter;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    if-nez p2, :cond_3

    .line 1571
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1572
    :cond_1
    const/4 v6, 0x1

    invoke-direct {p0, p3, p4, v6}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    move-result-object p2

    .line 1578
    :cond_2
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 1580
    iget-object v4, p0, Landroid/app/BackStackRecord;->mTail:Landroid/app/BackStackRecord$Op;

    .line 1581
    .local v4, "op":Landroid/app/BackStackRecord$Op;
    :goto_1
    if-eqz v4, :cond_6

    .line 1582
    iget v6, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v6, :pswitch_data_0

    .line 1643
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1574
    .end local v4    # "op":Landroid/app/BackStackRecord$Op;
    :cond_3
    if-nez p1, :cond_2

    .line 1575
    iget-object v6, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-static {p2, v6, v7}, Landroid/app/BackStackRecord;->setNameOverrides(Landroid/app/BackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1584
    .restart local v4    # "op":Landroid/app/BackStackRecord$Op;
    :pswitch_0
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1585
    .local v0, "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1586
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    .line 1647
    :cond_4
    :goto_2
    iget-object v4, v4, Landroid/app/BackStackRecord$Op;->prev:Landroid/app/BackStackRecord$Op;

    goto :goto_1

    .line 1592
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_1
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1593
    .restart local v0    # "f":Landroid/app/Fragment;
    if-eqz v0, :cond_5

    .line 1594
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1595
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    .line 1599
    :cond_5
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 1600
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1601
    iget-object v6, v4, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 1602
    .local v3, "old":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v3, Landroid/app/Fragment;->mNextAnim:I

    .line 1603
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1609
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "i":I
    .end local v3    # "old":Landroid/app/Fragment;
    :pswitch_2
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1610
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1611
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto :goto_2

    .line 1615
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1616
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1617
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    goto :goto_2

    .line 1622
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1623
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1624
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    goto :goto_2

    .line 1629
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1630
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1631
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_2

    .line 1636
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v0, v4, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 1637
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v4, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 1638
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v7}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v7

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_2

    .line 1650
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_6
    if-eqz p1, :cond_7

    .line 1651
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v8}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v8

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1653
    const/4 p2, 0x0

    .line 1656
    :cond_7
    iget v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v6, :cond_8

    .line 1657
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 1658
    const/4 v6, -0x1

    iput v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    .line 1660
    :cond_8
    return-object p2

    .line 1582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 509
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 510
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 511
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 512
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 514
    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/BackStackRecord;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 500
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    .line 505
    return-object p0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 740
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 741
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Run: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    iget-boolean v6, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v6, :cond_1

    .line 745
    iget v6, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-gez v6, :cond_1

    .line 746
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "addToBackStack() called after commit()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 750
    :cond_1
    invoke-virtual {p0, v10}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 752
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 753
    .local v1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 754
    .local v3, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/Fragment;>;"
    invoke-direct {p0, v1, v3}, Landroid/app/BackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 755
    invoke-direct {p0, v1, v3, v9}, Landroid/app/BackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/app/BackStackRecord$TransitionState;

    .line 757
    iget-object v5, p0, Landroid/app/BackStackRecord;->mHead:Landroid/app/BackStackRecord$Op;

    .line 758
    .local v5, "op":Landroid/app/BackStackRecord$Op;
    :goto_0
    if-eqz v5, :cond_a

    .line 759
    iget v6, v5, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v6, :pswitch_data_0

    .line 833
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 761
    :pswitch_0
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 762
    .local v0, "f":Landroid/app/Fragment;
    iget v6, v5, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 763
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6, v0, v9}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    .line 837
    :cond_2
    :goto_1
    iget-object v5, v5, Landroid/app/BackStackRecord$Op;->next:Landroid/app/BackStackRecord$Op;

    goto :goto_0

    .line 767
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_1
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 768
    .restart local v0    # "f":Landroid/app/Fragment;
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    .line 769
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 770
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    .line 771
    .local v4, "old":Landroid/app/Fragment;
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 772
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP_REPLACE: adding="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_3
    if-eqz v0, :cond_4

    iget v6, v4, Landroid/app/Fragment;->mContainerId:I

    iget v7, v0, Landroid/app/Fragment;->mContainerId:I

    if-ne v6, v7, :cond_5

    .line 776
    :cond_4
    if-ne v4, v0, :cond_6

    .line 777
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 769
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 779
    :cond_6
    iget-object v6, v5, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    .line 780
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 782
    :cond_7
    iget-object v6, v5, Landroid/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    iget v6, v5, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v4, Landroid/app/Fragment;->mNextAnim:I

    .line 784
    iget-boolean v6, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v6, :cond_8

    .line 785
    iget v6, v4, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/Fragment;->mBackStackNesting:I

    .line 786
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 787
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bump nesting of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_8
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v4, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    goto :goto_3

    .line 796
    .end local v2    # "i":I
    .end local v4    # "old":Landroid/app/Fragment;
    :cond_9
    if-eqz v0, :cond_2

    .line 797
    iget v6, v5, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 798
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6, v0, v9}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto/16 :goto_1

    .line 803
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_2
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 804
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v5, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 805
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 809
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_3
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 810
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v5, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 811
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 815
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_4
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 816
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v5, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 817
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 821
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_5
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 822
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v5, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 823
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 827
    .end local v0    # "f":Landroid/app/Fragment;
    :pswitch_6
    iget-object v0, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 828
    .restart local v0    # "f":Landroid/app/Fragment;
    iget v6, v5, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v6, v0, Landroid/app/Fragment;->mNextAnim:I

    .line 829
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;II)V

    goto/16 :goto_1

    .line 840
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_a
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v7, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v7, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget v8, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v9, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 843
    iget-boolean v6, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v6, :cond_b

    .line 844
    iget-object v6, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    .line 846
    :cond_b
    return-void

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 668
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 670
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 674
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 675
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 676
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 656
    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 658
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 662
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 663
    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 664
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 559
    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    .line 560
    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    .line 561
    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    .line 562
    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    .line 563
    return-object p0
.end method

.method public setSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 592
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 596
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 599
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    return-object p0
.end method

.method public varargs setSharedElements([Landroid/util/Pair;)Landroid/app/FragmentTransaction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/FragmentTransaction;"
        }
    .end annotation

    .prologue
    .local p1, "sharedElements":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/view/View;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 606
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 607
    :cond_0
    iput-object v5, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 608
    iput-object v5, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 624
    :goto_0
    return-object p0

    .line 610
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 611
    .local v1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 612
    .local v2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 613
    aget-object v4, p1, v0

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "transitionName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 615
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 618
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    aget-object v4, p1, v0

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    .end local v3    # "transitionName":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 622
    iput-object v2, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 567
    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    .line 568
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .prologue
    .line 628
    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    .line 629
    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 527
    new-instance v0, Landroid/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/app/BackStackRecord$Op;-><init>()V

    .line 528
    .local v0, "op":Landroid/app/BackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 529
    iput-object p1, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 530
    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    .line 532
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 264
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 268
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
