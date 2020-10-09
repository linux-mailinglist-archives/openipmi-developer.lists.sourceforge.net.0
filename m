Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BB8288D6B
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Oct 2020 17:56:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQukw-0006pq-FL; Fri, 09 Oct 2020 15:56:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kQuku-0006pj-UK
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 15:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b32z5dKsXOrYLHbSI9QCODj0mLTC/ZJJ3E6KUm9+yHE=; b=UyD8LzshEpUxnGNj58M+Cz15/0
 URlkW/4GvYu0norkjt6IyBCtb471cSB+MNdGCM8Q5dWhFUfwA6HqUFG8hKyeaRG7IlV8uKsCCpsvn
 HB9Cz9xC/CWwdFF8dott2VxK3jH0HD1692Sivz2OJJrFAjBDunfIaHcrx0PX+f619e3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b32z5dKsXOrYLHbSI9QCODj0mLTC/ZJJ3E6KUm9+yHE=; b=m
 y/aS4gy2VcZ/Nawwg0/TanBCxIhfWUancUEeiOvpRO5/4h57fueD+ud4rnb8PTRV9DdPwC12lebg9
 LNAmHRZ8lOPDoAFYqvvy5PuD/jkZPAn9xgPQ+iYyn2dUpe8PbamUCoObk3lJouQC6c7FkLSeokxFn
 v7xx8thDAWzAWgpo=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQukp-008dDv-Rp
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Oct 2020 15:56:28 +0000
Received: by mail-ot1-f65.google.com with SMTP id l4so9409540ota.7
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 09 Oct 2020 08:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b32z5dKsXOrYLHbSI9QCODj0mLTC/ZJJ3E6KUm9+yHE=;
 b=LDUnatNNn2udc+UqXUN+tdPGpv/2MM9wKl2dLPda8qil/vULNrO0DxhWPtDkcZAr7r
 Axl53TaOKUNtScl2hLkq3wuBNt2lR3WN46nvKYP8c1uTr33qF1NY9nZeDw/6Yzf+HUky
 iZQzHYFeB4F6JRZXy5O7uBw49tpgKhHzVWrMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=b32z5dKsXOrYLHbSI9QCODj0mLTC/ZJJ3E6KUm9+yHE=;
 b=pU7CjU+cGfPbik5s/0GC9A0ioThAu4oSmh96wGBoHO6W0WWPy/WmqkO39ZAlPX3dHq
 H07R5mqgl0i9I5/eE3b6maewTHfJxj8X9BtxJDFXGWCwzci0d1G8LOc6IXeTOnymaOW2
 3dXgmeOenw3WQH1c0CDvb2TE2EspmywAt7jeTdkhm/v17PsGxrGU1bou3NZWfp86nG6A
 kAQfP12XFd1YwvR5AH7RtDiPP7VP0dSTdLL8uBCwBKmzCLV/24q+0Mr3xDdk5QisLPEM
 Uggz4gJz9IAuCUguXJn6Vod/rxRIwQ7q9dt+p/LA0CfzGg2QG6mFFzoZAnICzoDzniTh
 jyZA==
X-Gm-Message-State: AOAM530ozoLd67bww8GcJI4iYUNwstV5SnNxWU0NwCbcQDZjmrPSAZLs
 B80CH52ULNPwQdeX9N9DkvL7eQ==
X-Google-Smtp-Source: ABdhPJz3Y617hhCiPlIHjqC9vW6PFy/AnltbdLlnrMsE2eBnxmpcpkdSCIOXcudkVjETugwBP8Bj1Q==
X-Received: by 2002:a9d:2a88:: with SMTP id e8mr8717319otb.299.1602258970850; 
 Fri, 09 Oct 2020 08:56:10 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id e7sm7347246oia.9.2020.10.09.08.56.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Oct 2020 08:56:09 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 shuah@kernel.org, rafael@kernel.org, johannes@sipsolutions.net,
 lenb@kernel.org, james.morse@arm.com, tony.luck@intel.com, bp@alien8.de,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com, minyard@acm.org, arnd@arndb.de, mchehab@kernel.org,
 rric@kernel.org
Date: Fri,  9 Oct 2020 09:55:55 -0600
Message-Id: <cover.1602209970.git.skhan@linuxfoundation.org>
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
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kQukp-008dDv-Rp
Subject: [Openipmi-developer] [PATCH v3 00/11] Introduce Simple atomic
 counters
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
the Linux Plumbers Conference. In this discussion, we identified
a need for looking closely and investigating atomic_t usages in
the kernel when it is used strictly as a counter without it
controlling object lifetimes and state changes.

There are a number of atomic_t usages in the kernel where atomic_t api
is used strictly for counting and not for managing object lifetime. In
some cases, atomic_t might not even be needed.

The purpose of these counters is to clearly differentiate atomic_t
counters from atomic_t usages that guard object lifetimes, hence prone
to overflow and underflow errors. It allows tools that scan for underflow
and overflow on atomic_t usages to detect overflow and underflows to scan
just the cases that are prone to errors.

Simple atomic counters api provides interfaces for simple atomic counters
that just count, and don't guard resource lifetimes. The interfaces are
built on top of atomic_t api, providing a smaller subset of atomic_t
interfaces necessary to support simple counters.
    
Counter wraps around to INT_MIN when it overflows and should not be used
to guard resource lifetimes, device usage and open counts that control
state changes, and pm states. Overflowing to INT_MIN is consistent with
the atomic_t api, which it is built on top of.
    
Using counter_atomic* to guard lifetimes could lead to use-after free
when it overflows and undefined behavior when used to manage state
changes and device usage/open states.

This patch series introduces Simple atomic counters. Counter atomic ops
leverage atomic_t and provide a sub-set of atomic_t ops.

In addition this patch series converts a few drivers to use the new api.
The following criteria is used for select variables for conversion:

1. Variable doesn't guard object lifetimes, manage state changes e.g:
   device usage counts, device open counts, and pm states.
2. Variable is used for stats and counters.
3. The conversion doesn't change the overflow behavior.

Note: Would like to get this into Linux 5.10-rc1 so we can continue
updating drivers that can be updated to use this API. If this all looks
good, Kees, would you like to take this through your tree or would you
like to take this through mine.

Changes since Patch v2:
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Minor changes to address Greg's comment to remove default from
   Kconfig
-- Added Copyrights to new files
Updates to address comments on v2 from Kees Cook
-- Updated Patch 1/11 to make clear that the counter wraps around to
   INT_MIN and that this behavior is consistent with the atomic_t
   api, on which this counter built api built on top of.
-- Other patch change logs updated with the correct wrap around
   behavior.
-- Patch 1/11 is updated to add tests with constants for overflow
   and underflow.
-- Patch 8/11 - added inits for the stat counters
-- Patch 10/11 - fixes the vmci_num_guest_devices != 0 to >0 which is
   safer than checking for !=0. 
 
Changes since Patch v1
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Addressed Kees's  and Joel's comments:
   1. Removed dec_return interfaces
   2. Removed counter_simple interfaces to be added later with changes
      to drivers that use them (if any).

Changes since RFC:
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Addressed Kees's comments:
   1. Non-atomic counters renamed to counter_simple32 and counter_simple64
      to clearly indicate size.
   2. Added warning for counter_simple* usage and it should be used only
      when there is no need for atomicity.
   3. Renamed counter_atomic to counter_atomic32 to clearly indicate size.
   4. Renamed counter_atomic_long to counter_atomic64 and it now uses
      atomic64_t ops and indicates size.
   5. Test updated for the API renames.
   6. Added helper functions for test results printing
   7. Verified that the test module compiles in kunit env. and test
      module can be loaded to run the test.
   8. Updated Documentation to reflect the intent to make the API
      restricted so it can never be used to guard object lifetimes
      and state management. I left _return ops for now, inc_return
      is necessary for now as per the discussion we had on this topic.
-- Updated driver patches with API name changes.
-- We discussed if binder counters can be non-atomic. For now I left
   them the same as the RFC patch - using counter_atomic32
-- Unrelated to this patch series:
   The patch series review uncovered improvements could be made to
   test_async_driver_probe and vmw_vmci/vmci_guest. I will track
   these for fixing later.

Shuah Khan (11):
  counters: Introduce counter_atomic* counters
  selftests:lib:test_counters: add new test for counters
  drivers/base: convert deferred_trigger_count and probe_count to
    counter_atomic32
  drivers/base/devcoredump: convert devcd_count to counter_atomic32
  drivers/acpi: convert seqno counter_atomic32
  drivers/acpi/apei: convert seqno counter_atomic32
  drivers/android/binder: convert stats, transaction_log to
    counter_atomic32
  drivers/base/test/test_async_driver_probe: convert to use
    counter_atomic32
  drivers/char/ipmi: convert stats to use counter_atomic32
  drivers/misc/vmw_vmci: convert num guest devices counter to
    counter_atomic32
  drivers/edac: convert pci counters to counter_atomic32

 Documentation/core-api/counters.rst          | 109 ++++++++++++
 MAINTAINERS                                  |   8 +
 drivers/acpi/acpi_extlog.c                   |   5 +-
 drivers/acpi/apei/ghes.c                     |   5 +-
 drivers/android/binder.c                     |  41 ++---
 drivers/android/binder_internal.h            |   3 +-
 drivers/base/dd.c                            |  19 +-
 drivers/base/devcoredump.c                   |   5 +-
 drivers/base/test/test_async_driver_probe.c  |  26 +--
 drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
 drivers/edac/edac_pci.h                      |   5 +-
 drivers/edac/edac_pci_sysfs.c                |  28 +--
 drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
 include/linux/counters.h                     | 176 +++++++++++++++++++
 lib/Kconfig                                  |   9 +
 lib/Makefile                                 |   1 +
 lib/test_counters.c                          | 162 +++++++++++++++++
 tools/testing/selftests/lib/Makefile         |   1 +
 tools/testing/selftests/lib/config           |   1 +
 tools/testing/selftests/lib/test_counters.sh |  10 ++
 21 files changed, 567 insertions(+), 74 deletions(-)
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
