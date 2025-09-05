.class Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;
.super Ljava/lang/Object;
.source "ZenAutomaticRuleHeaderPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$000(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/support/v14/preference/PreferenceFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;->access$100(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;

    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$1;->this$0:Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;

    invoke-direct {v1, v2}, Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController$RuleNameChangeListener;-><init>(Lcom/android/settings/notification/ZenAutomaticRuleHeaderPreferenceController;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V

    .line 83
    return-void
.end method
