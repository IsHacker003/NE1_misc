.class Lcom/android/settings/notification/ZenModeEventRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 150
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 151
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    iget p2, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    iput p1, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 153
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 154
    const/4 p1, 0x1

    return p1
.end method
