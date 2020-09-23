Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92509286732
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC2-000841-Rt; Wed, 07 Oct 2020 18:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kKuGt-0004co-Qw
 for openipmi-developer@lists.sourceforge.net; Wed, 23 Sep 2020 02:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jS6qXoxP8oaPPr4z/ISWBa/fqTB0t5njLCtqvmesqnQ=; b=HYO7G8CqD/j9CkOWujkREArZTI
 0H3oceK83Qc3F0SFCStYDyNT89f4bdpv6+0+UcW5DVN5O/JjfrOB2kqERXZtVlPlnRiFK1A7XR09e
 Tk+ic3+Dk1t/RfHxPIygFwzLkeggas5Gg+s1vlfZmuq1HZa+A+X1o7x63Baka0M6XoUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jS6qXoxP8oaPPr4z/ISWBa/fqTB0t5njLCtqvmesqnQ=; b=H
 D1DOo4muYJvXqV1NmUeCw+Ea7cu77Rlp1oL2IwribgygsFixOOTmyMoMd6bD6RMDqVeodH9NdwrxL
 XunjE3UE19dNZMH6qxNtSVIGwJOLdzvxboGKh5GHKHlL5NEPWh3O0v8y73R6qkLf5HRdnn2e0y4Ug
 n6pySGN3X+W9Vp2U=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kKuGp-003trv-1B
 for openipmi-developer@lists.sourceforge.net; Wed, 23 Sep 2020 02:12:39 +0000
Received: by mail-oi1-f195.google.com with SMTP id w16so23305896oia.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 22 Sep 2020 19:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jS6qXoxP8oaPPr4z/ISWBa/fqTB0t5njLCtqvmesqnQ=;
 b=G+hI5wX8b2Mgi7CpmlZz/BbRZ94AkUl88hXN1JwuQ34ehWFDDAH1EiGJlznX6Q1hkh
 leoTF4ALmGHjcSFCGWQTp9oolzWxQJAfHjJcY2uTD8jw1//YObslhst7+G02nWz+wJ6H
 SamX0bagHIpt+fJ/d7+7oToKKwlqUc5BpPiJY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jS6qXoxP8oaPPr4z/ISWBa/fqTB0t5njLCtqvmesqnQ=;
 b=hvgzptsLn3TpH3kJK+WCWxSZ/2fakEEeUfb7BKeDrjn4jgwJiJz3ftWi53nfB3gOIy
 X/rxOgFfHV3vokqsrbzo9MejUYigJDie+qT01gvVVMkJ0ti13m5/I0wYB9qv0qU81fkA
 M6aByQCj2T81PX3rKGDMpSRzxG1+4e2ZzCUiDwr9+y43DZOTVvr+Kj+Z5AyJQxYgPEtD
 IWUM/3ra+m8S5eA8upx7aIbAFfIIibyLGLv+c2fdKvNhFpXYI4g6nPzUI1HPFrMnwzfy
 0jF7rj46mj9zN8lr/Jx6a1mao08RkmSa+V/CPBQdzxg3DEJlJ9YZ3fMVf63XVXfF5tpO
 nTBA==
X-Gm-Message-State: AOAM533uHQIUUDi1a0GtALYKC/STUynPcWneFKNfcJu88TjoiB6lslmf
 o0loWAbPOTCIy9nnVPTJtwXjVk4CQbPZ0w==
X-Google-Smtp-Source: ABdhPJyPQg1FpZjcUx+RNaSk3Z0uB0vB4JXzkK2pjJD8AjXfQL76MIafNbVdr3ZrCY8bDGXBAwq3dg==
X-Received: by 2002:aca:4142:: with SMTP id o63mr4085367oia.167.1600825436078; 
 Tue, 22 Sep 2020 18:43:56 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y23sm8801820ooj.34.2020.09.22.18.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Sep 2020 18:43:55 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 shuah@kernel.org, rafael@kernel.org, johannes@sipsolutions.net,
 lenb@kernel.org, james.morse@arm.com, tony.luck@intel.com, bp@alien8.de,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com, minyard@acm.org, arnd@arndb.de, mchehab@kernel.org,
 rric@kernel.org
Date: Tue, 22 Sep 2020 19:43:29 -0600
Message-Id: <cover.1600816121.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: test_counters.sh]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kKuGp-003trv-1B
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:21 +0000
Subject: [Openipmi-developer] [RFC PATCH 00/11] Introduce Simple atomic and
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
Cc: devel@driverdev.osuosl.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-kselftest@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

This patch series is a result of discussion at the refcount_t BOF
the Linux Plumbers Conference. In this discussion, we identifed
a need for looking closely and investigating atomic_t usages in
the kernel when it is used strictly as a counter wothout it
controlling object lifetimes and state changes.

There are a number of atomic_t usages in the kernel where atomic_t api
is used strictly for counting and not for managing object lifetime. In
some cases, atomic_t might not even be needed.
    
The purpose of these counters is twofold: 1. clearly differentiate
atomic_t counters from atomic_t usages that guard object lifetimes,
hence prone to overflow and underflow errors. It allows tools that scan
for underflow and overflow on atomic_t usages to detect overflow and
underflows to scan just the cases that are prone to errors. 2. provides
non-atomic counters for cases where atomic isn't necessary.
    
Simple atomic and non-atomic counters api provides interfaces for simple
atomic and non-atomic counters that just count, and don't guard resource
lifetimes. Counters will wrap around to 0 when it overflows and should
not be used to guard resource lifetimes, device usage and open counts
that control state changes, and pm states.
    
Using counter_atomic to guard lifetimes could lead to use-after free
when it overflows and undefined behavior when used to manage state
changes and device usage/open states.

This patch series introduces Simple atomic and non-atomic counters.
Counter atomic ops leverage atomic_t and provide a sub-set of atomic_t
ops.

In addition this patch series converts a few drivers to use the new api.
The following criteria is used for select variables for conversion:

1. Variable doesn't guard object lifetimes, manage state changes e.g:
   device usage counts, device open counts, and pm states.
2. Variable is used for stats and counters.
3. The conversion doesn't change the overflow behavior.

Please review and let me know if non-stat conversions e.g: probe_count,
deferred_trigger_count make sense.

Shuah Khan (11):
  counters: Introduce counter and counter_atomic counters
  selftests:lib:test_counters: add new test for counters
  drivers/base: convert deferred_trigger_count and probe_count to
    counter_atomic
  drivers/base/devcoredump: convert devcd_count to counter_atomic
  drivers/acpi: convert seqno counter_atomic
  drivers/acpi/apei: convert seqno counter_atomic
  drivers/android/binder: convert stats, transaction_log to
    counter_atomic
  drivers/base/test/test_async_driver_probe: convert to use
    counter_atomic
  drivers/char/ipmi: convert stats to use counter_atomic
  drivers/misc/vmw_vmci: convert num guest devices counter to
    counter_atomic
  drivers/edac: convert pci counters to counter_atomic

 Documentation/core-api/counters.rst          | 158 +++++++++
 MAINTAINERS                                  |   8 +
 drivers/acpi/acpi_extlog.c                   |   5 +-
 drivers/acpi/apei/ghes.c                     |   5 +-
 drivers/android/binder.c                     |  41 +--
 drivers/android/binder_internal.h            |   3 +-
 drivers/base/dd.c                            |  19 +-
 drivers/base/devcoredump.c                   |   5 +-
 drivers/base/test/test_async_driver_probe.c  |  23 +-
 drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
 drivers/edac/edac_pci.h                      |   5 +-
 drivers/edac/edac_pci_sysfs.c                |  28 +-
 drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
 include/linux/counters.h                     | 343 +++++++++++++++++++
 lib/Kconfig                                  |  10 +
 lib/Makefile                                 |   1 +
 lib/test_counters.c                          | 283 +++++++++++++++
 tools/testing/selftests/lib/Makefile         |   1 +
 tools/testing/selftests/lib/config           |   1 +
 tools/testing/selftests/lib/test_counters.sh |   5 +
 21 files changed, 897 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/core-api/counters.rst
 create mode 100644 include/linux/counters.h
 create mode 100644 lib/test_counters.c
 create mode 100755 tools/testing/selftests/lib/test_counters.sh

-- 
2.25.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
