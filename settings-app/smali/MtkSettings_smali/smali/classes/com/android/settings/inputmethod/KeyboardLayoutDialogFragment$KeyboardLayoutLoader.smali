.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;
.super Landroid/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 304
    iput-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 305
    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
    .locals 8

    .line 309
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;-><init>()V

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 311
    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v2

    .line 313
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 314
    invoke-virtual {v1, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 315
    if-eqz v6, :cond_0

    .line 316
    iget-object v7, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v2, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    .line 322
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_3

    .line 324
    iget-object v2, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 325
    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    .line 326
    iget-object v5, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    iput v3, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 329
    goto :goto_2

    .line 325
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 334
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->keyboardLayouts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iput v4, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->current:I

    .line 338
    :cond_4
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->loadInBackground()Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 0

    .line 343
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->forceLoad()V

    .line 345
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 349
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutLoader;->cancelLoad()Z

    .line 351
    return-void
.end method
