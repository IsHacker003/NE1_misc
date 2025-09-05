.class Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;
.super Ljava/lang/Object;
.source "ConditionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/ConditionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/conditional/Condition;

    .line 52
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->access$100(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$1;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    invoke-static {v1}, Lcom/android/settings/dashboard/conditional/ConditionAdapter;->access$000(Lcom/android/settings/dashboard/conditional/ConditionAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v2

    .line 52
    const/16 v3, 0x177

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 55
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/Condition;->onPrimaryClick()V

    .line 56
    return-void
.end method
