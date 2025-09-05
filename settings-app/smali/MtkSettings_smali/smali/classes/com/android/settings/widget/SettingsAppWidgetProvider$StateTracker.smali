.class abstract Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 126
    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method

.method private final getContentDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonDescription()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 253
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const p2, 0x7f12069f    # @string/gadget_state_template '%1$s %2$s'

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonDescription()I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getContainerId()I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2

    .line 319
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    .line 327
    return v1

    .line 329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 335
    return v1

    .line 333
    :pswitch_0
    const/4 p1, 0x1

    return p1

    .line 331
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 3

    .line 268
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 269
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 284
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 279
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 281
    goto :goto_0

    .line 275
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 276
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 277
    goto :goto_0

    .line 271
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 273
    nop

    .line 288
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez p2, :cond_2

    .line 289
    iget-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz p2, :cond_2

    .line 290
    const-string p2, "SettingsAppWidgetProvider"

    const-string v0, "processing deferred state change"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 292
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 293
    const-string p1, "SettingsAppWidgetProvider"

    const-string p2, "... but intended state matches, so no changes."

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    :cond_0
    iget-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    .line 295
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 296
    iget-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 298
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 301
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 8

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContainerId()I

    move-result v0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v1

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v3

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    const v4, 0x7f12069e    # @string/gadget_state_on 'on'

    .line 218
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0, v7}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 220
    nop

    .line 221
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object p1

    aget p1, p1, v3

    .line 220
    invoke-virtual {p2, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 222
    goto :goto_0

    .line 210
    :pswitch_1
    const v4, 0x7f12069d    # @string/gadget_state_off 'off'

    .line 211
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 213
    nop

    .line 214
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object p1

    aget p1, p1, v3

    .line 213
    invoke-virtual {p2, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 215
    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const v4, 0x7f1206a1    # @string/gadget_state_turning_on 'turning on'

    .line 231
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0, v7}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 233
    nop

    .line 234
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object p1

    aget p1, p1, v3

    .line 233
    invoke-virtual {p2, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 236
    :cond_1
    const v4, 0x7f1206a0    # @string/gadget_state_turning_off 'turning off'

    .line 237
    invoke-direct {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getContentDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0, v6}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 239
    nop

    .line 240
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object p1

    aget p1, p1, v3

    .line 239
    invoke-virtual {p2, v2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 244
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 141
    nop

    .line 142
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    nop

    .line 145
    goto :goto_0

    .line 147
    :pswitch_1
    nop

    .line 148
    nop

    .line 155
    move v2, v3

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 155
    xor-int/lit8 v2, v0, 0x1

    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 156
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_2

    .line 161
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_1

    .line 163
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 164
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 166
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
