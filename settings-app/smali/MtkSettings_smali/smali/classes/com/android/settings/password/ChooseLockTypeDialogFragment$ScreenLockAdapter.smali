.class Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLockAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/password/ScreenLockType;",
        ">;"
    }
.end annotation


# instance fields
.field private final mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;",
            "Lcom/android/settings/password/ChooseLockGenericController;",
            ")V"
        }
    .end annotation

    .line 152
    const v0, 0x7f0d0048    # @layout/choose_lock_dialog_item 'res/layout/choose_lock_dialog_item.xml'

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 153
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 154
    return-void
.end method

.method private static getIconForScreenLock(Landroid/content/Context;Lcom/android/settings/password/ScreenLockType;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 172
    sget-object v0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 183
    const/4 p0, 0x0

    return-object p0

    .line 178
    :pswitch_0
    const p1, 0x7f080149    # @drawable/ic_password 'res/drawable/ic_password.xml'

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 176
    :pswitch_1
    const p1, 0x7f08014e    # @drawable/ic_pin 'res/drawable/ic_pin.xml'

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 174
    :pswitch_2
    const p1, 0x7f08014a    # @drawable/ic_pattern 'res/drawable/ic_pattern.xml'

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 158
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    if-nez p2, :cond_0

    .line 160
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0048    # @layout/choose_lock_dialog_item 'res/layout/choose_lock_dialog_item.xml'

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ScreenLockType;

    .line 164
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockGenericController;->getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    nop

    .line 167
    invoke-static {v0, p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getIconForScreenLock(Landroid/content/Context;Lcom/android/settings/password/ScreenLockType;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 166
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    return-object p2
.end method
