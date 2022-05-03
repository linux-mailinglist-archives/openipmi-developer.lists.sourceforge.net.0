Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 516615190C7
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 May 2022 23:59:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nm0Y4-0006WU-9i; Tue, 03 May 2022 21:59:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <evgreen@chromium.org>) id 1nlxS0-0002yX-MR
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 18:40:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R4/K6aedIUl9MohMPOlkW7bX2DydtcwCMb+CydErQh0=; b=iTYRvCSBVAJTDHkZFRjkxEMjDq
 HiDVgpIqoYXjDiBQoG3I15RUpQtYV80YVIy+GwvmIUtUGotBT17Iffy2HedHRSvTbu9b+S/b+Ktb2
 VQjiO93t2aKWzhm2dxCX7qJdJpWE7xVUbBVpUkgwEdizxx83PwapPP1CFxxQmJHlGItQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R4/K6aedIUl9MohMPOlkW7bX2DydtcwCMb+CydErQh0=; b=DmLmzM3tPiVFDya8yeNBKVmcyj
 koQfK1rYDNbfpiPb3WRKckS31LM1S7O63iB1zmlN85Nwq+/IS5mn0GRYUryJMzVGh0qJJG3nk4ifh
 wI48cjD+/GpiLjdYiFCC/90i2eZJq5+3v2tSmN8b21WnRxcjQbfnxRq3Zzdw6uw4SSig=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nlxRv-000L5T-RL
 for openipmi-developer@lists.sourceforge.net; Tue, 03 May 2022 18:40:43 +0000
Received: by mail-oi1-f169.google.com with SMTP id l16so11824623oil.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 03 May 2022 11:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R4/K6aedIUl9MohMPOlkW7bX2DydtcwCMb+CydErQh0=;
 b=CJu9kW5FihxnTA4wr5HdIEfymEuuekA79aJVNMM2F6kdV2+CmmuoX8R9fhQ+4vfzGu
 cwr0+95tIZHFde4YyKyVQIEU1uoccXZ0Wre6iNf7ZQo6N8EA9gsX+jTvyEJvXCE49T6e
 235jqkHQ/du2SkGvAqn3TvfA6e2cYQxB3dcEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R4/K6aedIUl9MohMPOlkW7bX2DydtcwCMb+CydErQh0=;
 b=JgUDZP7S9iiP1pj96jHJMfJukQvoH4DGtOu8ev4GTmSYoBr8aazB2DNEaMfAdnf79m
 F8tSnULP81bD+wxaExrKzeq1J30HN8RRD2LVzn9JF9R0nx0IdXZS1Cib198M4F39WJgI
 s8LaPgYU9+1zX4Wq9F63deh+YPVKWE0qN7OKDjwVL2jbZJOfxx49FE5pUR8m+aFZ9m2/
 H28Sl2hNOpIIsdevkNLoDWwaJFsNAuYv0+7uwKWVnyCK0RsAAO+EIKCz+wTZtCp/C/ZJ
 C++kcVPjOc0/mexBSmRvd0QSGgHyh5H55cNQ2N4melsuib5LWZwZ+wVNaj+3lujT441y
 ohVw==
X-Gm-Message-State: AOAM530Y1Ohh9GcR3KVXCyOLpXoQ6J78N1LlE8M4H7QSPO6YklZQ3hT4
 49CkGVAx+L/RkJG49EtKOu2gOMTn1Dtqyw==
X-Google-Smtp-Source: ABdhPJx6KRa7cT8CtVK8xW0YwaJ/SPwiBJiwynVhAkz7mm6u5jPDcfudXK7UpvfG0eT3/RfI53ky4g==
X-Received: by 2002:a05:6870:5829:b0:de:ab74:44cf with SMTP id
 r41-20020a056870582900b000deab7444cfmr2190124oap.17.1651601399650; 
 Tue, 03 May 2022 11:09:59 -0700 (PDT)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com.
 [209.85.167.173]) by smtp.gmail.com with ESMTPSA id
 23-20020a4ae1b7000000b0035eb4e5a6d8sm5221858ooy.46.2022.05.03.11.09.59
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 May 2022 11:09:59 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id l16so11739368oil.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 03 May 2022 11:09:59 -0700 (PDT)
X-Received: by 2002:a05:6808:d50:b0:322:fb1d:319d with SMTP id
 w16-20020a0568080d5000b00322fb1d319dmr2350498oik.174.1651601052906; Tue, 03
 May 2022 11:04:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-5-gpiccoli@igalia.com>
In-Reply-To: <20220427224924.592546-5-gpiccoli@igalia.com>
From: Evan Green <evgreen@chromium.org>
Date: Tue, 3 May 2022 11:03:37 -0700
X-Gmail-Original-Message-ID: <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
Message-ID: <CAE=gft5Pq25L4KFoPWbftkPF-JN1ex2yws77mMJ4GQnn9W0L2g@mail.gmail.com>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 27,
 2022 at 3:51 PM Guilherme G. Piccoli <gpiccoli@igalia.com>
 wrote: > > Currently the gsmi driver registers a panic notifier as well as
 > reboot and die notifiers. The callbacks register [...] 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nlxRv-000L5T-RL
X-Mailman-Approved-At: Tue, 03 May 2022 21:59:11 +0000
Subject: Re: [Openipmi-developer] [PATCH 04/30] firmware: google: Convert
 regular spinlock into trylock on panic path
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 David Gow <davidgow@google.com>, linux-xtensa@linux-xtensa.org,
 peterz@infradead.org, alejandro.j.jimenez@oracle.com,
 linux-remoteproc@vger.kernel.org, feng.tang@intel.com,
 linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, Will Deacon <will@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-leds@vger.kernel.org,
 linux-s390@vger.kernel.org, mikelley@microsoft.com, john.ogness@linutronix.de,
 bhe@redhat.com, Jonathan Corbet <corbet@lwn.net>, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux PM <linux-pm@vger.kernel.org>, coresight@lists.linaro.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Borislav Petkov <bp@alien8.de>, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, vkuznets@redhat.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 27, 2022 at 3:51 PM Guilherme G. Piccoli
<gpiccoli@igalia.com> wrote:
>
> Currently the gsmi driver registers a panic notifier as well as
> reboot and die notifiers. The callbacks registered are called in
> atomic and very limited context - for instance, panic disables
> preemption, local IRQs and all other CPUs that aren't running the
> current panic function.
>
> With that said, taking a spinlock in this scenario is a
> dangerous invitation for a deadlock scenario. So, we fix
> that in this commit by changing the regular spinlock with
> a trylock, which is a safer approach.
>
> Fixes: 74c5b31c6618 ("driver: Google EFI SMI")
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: David Gow <davidgow@google.com>
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Julius Werner <jwerner@chromium.org>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> ---
>  drivers/firmware/google/gsmi.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/firmware/google/gsmi.c b/drivers/firmware/google/gsmi.c
> index adaa492c3d2d..b01ed02e4a87 100644
> --- a/drivers/firmware/google/gsmi.c
> +++ b/drivers/firmware/google/gsmi.c
> @@ -629,7 +629,10 @@ static int gsmi_shutdown_reason(int reason)
>         if (saved_reason & (1 << reason))
>                 return 0;
>
> -       spin_lock_irqsave(&gsmi_dev.lock, flags);
> +       if (!spin_trylock_irqsave(&gsmi_dev.lock, flags)) {
> +               rc = -EBUSY;
> +               goto out;
> +       }

gsmi_shutdown_reason() is a common function called in other scenarios
as well, like reboot and thermal trip, where it may still make sense
to wait to acquire a spinlock. Maybe we should add a parameter to
gsmi_shutdown_reason() so that you can get your change on panic, but
we don't convert other callbacks into try-fail scenarios causing us to
miss logs.

Though thinking more about it, is this really a Good Change (TM)? The
spinlock itself already disables interrupts, meaning the only case
where this change makes a difference is if the panic happens from
within the function that grabbed the spinlock (in which case the
callback is also likely to panic), or in an NMI that panics within
that window. The downside of this change is that if one core was
politely working through an event with the lock held, and another core
panics, we now might lose the panic log, even though it probably would
have gone through fine assuming the other core has a chance to
continue.

-Evan


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
