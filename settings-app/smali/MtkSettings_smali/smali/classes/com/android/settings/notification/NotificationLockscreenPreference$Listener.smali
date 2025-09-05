.class Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;
.super Ljava/lang/Object;
.source "NotificationLockscreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationLockscreenPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private final mInner:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationLockscreenPreference;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mInner:Landroid/content/DialogInterface$OnClickListener;

    .line 149
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/notification/NotificationLockscreenPreference;->access$202(Lcom/android/settings/notification/NotificationLockscreenPreference;Z)Z

    .line 165
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mInner:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 154
    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    .line 156
    iget-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 157
    iget-object p2, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 158
    invoke-static {v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->access$000(Lcom/android/settings/notification/NotificationLockscreenPreference;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->access$100(Lcom/android/settings/notification/NotificationLockscreenPreference;IZ)I

    move-result p1

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x1020214    # @android:id/customPanel

    if-ne p1, v0, :cond_0

    .line 174
    iget-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->this$0:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 175
    invoke-static {v0}, Lcom/android/settings/notification/NotificationLockscreenPreference;->access$300(Lcom/android/settings/notification/NotificationLockscreenPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 174
    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 177
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/notification/NotificationLockscreenPreference$Listener;->mView:Landroid/view/View;

    .line 169
    return-void
.end method
