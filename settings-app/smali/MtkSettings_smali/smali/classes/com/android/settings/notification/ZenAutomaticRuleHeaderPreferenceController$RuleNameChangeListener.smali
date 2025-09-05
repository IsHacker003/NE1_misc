.class public Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;
.super Ljava/lang/Object;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuleNameChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3

    .line 130
    iget-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$200(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x4f3

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 132
    iget-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$100(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$300(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$100(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/ZenModeBackend;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 134
    return-void
.end method
