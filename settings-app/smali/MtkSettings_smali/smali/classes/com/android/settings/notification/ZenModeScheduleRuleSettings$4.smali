.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 144
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$100(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 145
    const/4 p1, 0x1

    return p1
.end method
