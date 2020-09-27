Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C022728673E
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC3-00087j-Vf; Wed, 07 Oct 2020 18:29:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <joel@joelfernandes.org>) id 1kMh88-0008KF-8r
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 00:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QZ9ccKxrbw+GLDZtn/A5B8mgsLI26ygsTihNFMKsaJg=; b=VfxPVj7pFU0UnfiutzkGEymhcH
 EKKcaIdi/I3g9k3iQhe3Bahga3ILWIJDOWayCR+P8/2UzECbvwLogV0wNZzaNPX2R2IDZtWyfajGa
 fwJpSEOTlgG+xh0iESoNHc2+vStWx0/1Pw7lhA163FEcxHYI/EYdKPxA/onktgAw4Tko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QZ9ccKxrbw+GLDZtn/A5B8mgsLI26ygsTihNFMKsaJg=; b=JxDxgIKfpCMgv3CUcZz8cO/snV
 JrTCS/p9Og+XYNX7DRG8gk4gZfyBkcmWlv99o/Ns9DkpsXaZ0jdsKlMnF1CFIjr5s6wlBs8wRtgrJ
 of3o/g7sB11BRSj19QqFcGzJ74N1CiNvGjXHv4jda46SCr5JF5PdoHNdEH/4kFN3oB1U=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kMh7u-00Ap17-65
 for openipmi-developer@lists.sourceforge.net; Mon, 28 Sep 2020 00:35:00 +0000
Received: by mail-pf1-f195.google.com with SMTP id f18so7759454pfa.10
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 27 Sep 2020 17:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QZ9ccKxrbw+GLDZtn/A5B8mgsLI26ygsTihNFMKsaJg=;
 b=F/56Xv83N6WX7oppzzL1NJZmCHsucSUClxFHBoBH3xsnTVfETiPJeuhnRdxGz41V4r
 wmhjN4hzByPXiI41LvOfaV3oAVNMOhh4n5Bti5j3pJHKbA2Nsm8f9J/+OQapxcZKM/0E
 Yg72rxpPjAQYXHf+wlNQils/SLD473ptBw7hc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QZ9ccKxrbw+GLDZtn/A5B8mgsLI26ygsTihNFMKsaJg=;
 b=FhyRwGi7dH4i8AZlgH+a6Z3KT8+hINGaCJUEqzYeBEv7iqiJvDkr6W5jMBg5YHP286
 bTLWSh/i5dmvp9V/HOA6C+yBQ0pJxKzZyhmGpKNPNm2mwSJWZPBpeRvJS1i8GlKe5FW9
 3SZawdAO0qSPEayNPdBQ3LsDWQW27lBrecW3Vct7EAGA7lov5Pf2p3+LhTRolkI2Ld9Y
 +lb9nKH/YFPBW+1SKGJO0OUIIP0jtC/938pNJ7qqA36GZQqFprDmXuXlm/aqcBECB3eZ
 36TSSflsqlyymih7RhwAYFJx0nZqhKyuBCmF2j8IC6QvH1sdB1zRY8fIKIWQ12Oxe/3B
 hOIQ==
X-Gm-Message-State: AOAM532XiicHy6cqBo78CAgY9bl1+IQVFsd5brMy4vaDr7BEP38kt4TA
 hRK/+h2yKh3hEK/9x61LXuL253qzGDDgwQ==
X-Google-Smtp-Source: ABdhPJxVvYjhgGsi9+tR/TAw2u5qjrv6jp+i1+M0SKg/XJH2jhzXZSe5R7zNVYtzRKNJD4xFiXfYRw==
X-Received: by 2002:a05:6214:292:: with SMTP id
 l18mr9219493qvv.3.1601249727784; 
 Sun, 27 Sep 2020 16:35:27 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:cad3:ffff:feb3:bd59])
 by smtp.gmail.com with ESMTPSA id j16sm7589014qkg.26.2020.09.27.16.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 16:35:27 -0700 (PDT)
Date: Sun, 27 Sep 2020 19:35:26 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20200927233526.GA500818@google.com>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1601073127.git.skhan@linuxfoundation.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kMh7u-00Ap17-65
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/11] Introduce Simple atomic and
 non-atomic counters
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 devel@driverdev.osuosl.org, arnd@arndb.de, corbet@lwn.net, surenb@google.com,
 linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, lenb@kernel.org,
 tkjos@android.com, keescook@chromium.org, minyard@acm.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org, maco@android.com,
 christian@brauner.io, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 james.morse@arm.com, hridya@google.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 25, 2020 at 05:47:14PM -0600, Shuah Khan wrote:
> This patch series is a result of discussion at the refcount_t BOF
> the Linux Plumbers Conference. In this discussion, we identified
> a need for looking closely and investigating atomic_t usages in
> the kernel when it is used strictly as a counter without it
> controlling object lifetimes and state changes.
> 
> There are a number of atomic_t usages in the kernel where atomic_t api
> is used strictly for counting and not for managing object lifetime. In
> some cases, atomic_t might not even be needed.
>     
> The purpose of these counters is twofold: 1. clearly differentiate
> atomic_t counters from atomic_t usages that guard object lifetimes,
> hence prone to overflow and underflow errors. It allows tools that scan
> for underflow and overflow on atomic_t usages to detect overflow and
> underflows to scan just the cases that are prone to errors. 2. provides
> non-atomic counters for cases where atomic isn't necessary.

Nice series :)

It appears there is no user of counter_simple in this series other than the
selftest. Would you be planning to add any conversions in the series itself,
for illustration of use? Sorry if I missed a usage.

Also how do we guard against atomicity of counter_simple RMW operations? Is
the implication that it should be guarded using other synchronization to
prevent lost-update problem?

Some more comments:

1.  atomic RMW operations that have a return value are fully ordered. Would
    you be adding support to counter_simple for such ordering as well, for
    consistency?

2. I felt counter_atomic and counter_atomic64 would be nice equivalents to
   the atomic and atomic64 naming currently used (i.e. dropping the '32').
   However that is just my opinion and I am ok with either naming.

thanks!

 - Joel

>     
> Simple atomic and non-atomic counters api provides interfaces for simple
> atomic and non-atomic counters that just count, and don't guard resource
> lifetimes. Counters will wrap around to 0 when it overflows and should
> not be used to guard resource lifetimes, device usage and open counts
> that control state changes, and pm states.
>     
> Using counter_atomic to guard lifetimes could lead to use-after free
> when it overflows and undefined behavior when used to manage state
> changes and device usage/open states.
> 
> This patch series introduces Simple atomic and non-atomic counters.
> Counter atomic ops leverage atomic_t and provide a sub-set of atomic_t
> ops.
> 
> In addition this patch series converts a few drivers to use the new api.
> The following criteria is used for select variables for conversion:
> 
> 1. Variable doesn't guard object lifetimes, manage state changes e.g:
>    device usage counts, device open counts, and pm states.
> 2. Variable is used for stats and counters.
> 3. The conversion doesn't change the overflow behavior.
> 
> Changes since RFC:
> -- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
>    the patches with the tags.
> -- Addressed Kees's comments:
>    1. Non-atomic counters renamed to counter_simple32 and counter_simple64
>       to clearly indicate size.
>    2. Added warning for counter_simple* usage and it should be used only
>       when there is no need for atomicity.
>    3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
>    4. Renamed counter_atomic_long to counter_atomic64 and it now uses
>       atomic64_t ops and indicates size.
>    5. Test updated for the API renames.
>    6. Added helper functions for test results printing
>    7. Verified that the test module compiles in kunit env. and test
>       module can be loaded to run the test.
>    8. Updated Documentation to reflect the intent to make the API
>       restricted so it can never be used to guard object lifetimes
>       and state management. I left _return ops for now, inc_return
>       is necessary for now as per the discussion we had on this topic. 
> -- Updated driver patches with API name changes.
> -- We discussed if binder counters can be non-atomic. For now I left
>    them the same as the RFC patch - using counter_atomic32
> -- Unrelated to this patch series:
>    The patch series review uncovered improvements could be made to
>    test_async_driver_probe and vmw_vmci/vmci_guest. I will track
>    these for fixing later.
> 
> Shuah Khan (11):
>   counters: Introduce counter_simple* and counter_atomic* counters
>   selftests:lib:test_counters: add new test for counters
>   drivers/base: convert deferred_trigger_count and probe_count to
>     counter_atomic32
>   drivers/base/devcoredump: convert devcd_count to counter_atomic32
>   drivers/acpi: convert seqno counter_atomic32
>   drivers/acpi/apei: convert seqno counter_atomic32
>   drivers/android/binder: convert stats, transaction_log to
>     counter_atomic32
>   drivers/base/test/test_async_driver_probe: convert to use
>     counter_atomic32
>   drivers/char/ipmi: convert stats to use counter_atomic32
>   drivers/misc/vmw_vmci: convert num guest devices counter to
>     counter_atomic32
>   drivers/edac: convert pci counters to counter_atomic32
> 
>  Documentation/core-api/counters.rst          | 174 +++++++++
>  MAINTAINERS                                  |   8 +
>  drivers/acpi/acpi_extlog.c                   |   5 +-
>  drivers/acpi/apei/ghes.c                     |   5 +-
>  drivers/android/binder.c                     |  41 +--
>  drivers/android/binder_internal.h            |   3 +-
>  drivers/base/dd.c                            |  19 +-
>  drivers/base/devcoredump.c                   |   5 +-
>  drivers/base/test/test_async_driver_probe.c  |  23 +-
>  drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
>  drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
>  drivers/edac/edac_pci.h                      |   5 +-
>  drivers/edac/edac_pci_sysfs.c                |  28 +-
>  drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
>  include/linux/counters.h                     | 350 +++++++++++++++++++
>  lib/Kconfig                                  |  10 +
>  lib/Makefile                                 |   1 +
>  lib/test_counters.c                          | 276 +++++++++++++++
>  tools/testing/selftests/lib/Makefile         |   1 +
>  tools/testing/selftests/lib/config           |   1 +
>  tools/testing/selftests/lib/test_counters.sh |   5 +
>  21 files changed, 913 insertions(+), 74 deletions(-)
>  create mode 100644 Documentation/core-api/counters.rst
>  create mode 100644 include/linux/counters.h
>  create mode 100644 lib/test_counters.c
>  create mode 100755 tools/testing/selftests/lib/test_counters.sh
> 
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
