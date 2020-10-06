Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4174E28675C
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC7-0008KT-Ek; Wed, 07 Oct 2020 18:29:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kPtpb-0003mX-V9
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 20:45:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FAVTd4/uhiW60aPw+XvSmqORkXupHL87bPyGbV0HsYw=; b=dpJuc6etMf1KWllYzITjoRQ1M8
 Rt0LHM8DvKqz1zj7xXR+r7gmgYKHVxxnWIyUlBZLB2fkifLzv5ec2AQyIwzwllDvjhIeESGcS6Gn4
 c1DZpK3rLwKSiZgHouhYZbH7VIPaHw++qgHusXULkqeP8cP43Vngesy92K+TY0JSS5oU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FAVTd4/uhiW60aPw+XvSmqORkXupHL87bPyGbV0HsYw=; b=H
 VQFZM+dOsI97XdZpngBo6HyClzk1KUey6Sv4PHI3vC9iLixF3QBuvGLgPK6BI3l4nfBspzD3LgIGK
 ghn/VGKlFaNxHM+Sm7b91rdmy9bLzaw0bZicTkIOe+ozHNq9nu8uEUMgj9El3lvWbigb8+MZtTXpK
 ROUQILYk6fVkXnrA=;
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kPtpR-001Mx2-NU
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Oct 2020 20:45:07 +0000
Received: by mail-il1-f193.google.com with SMTP id u9so117805ilj.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Oct 2020 13:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FAVTd4/uhiW60aPw+XvSmqORkXupHL87bPyGbV0HsYw=;
 b=U8RRNn9buGpyfeQW5lvmH3Wmzq2YD8O1mN7x0FY+53p4cXKgvqPJy505TkImeSvG5u
 vPqk7VPNdpjJ6qSCnY+aBFwsvl58Pzzg7PMB9AE+AL+AfTUxXgRReKKC4MwkcYRN5fQj
 kFbcmpk7KiSko4YptwdL9RjK32FM9VmUFsc+s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FAVTd4/uhiW60aPw+XvSmqORkXupHL87bPyGbV0HsYw=;
 b=r4qK85akqK9HfQrIq1p4eO+fZ2ExeOV1HhpyTPUk3xSzjkDEcDKoXtDv4NtWDGUp0U
 u5iE/1N9IkRES13iOiKTUk+VgANa8axJvk70/YmxF0BmeUNur2/HEm31cyX6dXZEsMnB
 VjNRDLNbO/ZpD/1MpVQJ8fWoAaVIAMu0k67hMoU007dFMi7kgtHfhYrqoyixAv8O1x9u
 pxWf/6zHcA5QxXs0qOLRZIZ4QYyAcr3zLD3rhtjqKmg1d+I87rTqoHsMB+6jvn2viMap
 TANPw+NZ7hgA+wElT5KYh/70NzffNFVoSq+4a/PQESO0mcQOEowN3y/d9KDh7TNNgH28
 f93A==
X-Gm-Message-State: AOAM533pizMxKZXkU5oQsROk9fCUcX8NeHvZ0KDYeZC1hb/9nnoltksG
 kcw4ZQjWEnUh7FlKSdTPeeQ0dw==
X-Google-Smtp-Source: ABdhPJyYiB/m/jo1bQRIrsuVzVlWXVEm/AoM5jDHZ7E+dxaOLQnEmcXEJ+hfYOVO3MBQ5PqFH2fXzQ==
X-Received: by 2002:a92:b30c:: with SMTP id p12mr9703ilh.35.1602017092051;
 Tue, 06 Oct 2020 13:44:52 -0700 (PDT)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id s69sm1665627ili.54.2020.10.06.13.44.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 13:44:51 -0700 (PDT)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 shuah@kernel.org, rafael@kernel.org, johannes@sipsolutions.net,
 lenb@kernel.org, james.morse@arm.com, tony.luck@intel.com, bp@alien8.de,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org, christian@brauner.io, hridya@google.com,
 surenb@google.com, minyard@acm.org, arnd@arndb.de, mchehab@kernel.org,
 rric@kernel.org
Date: Tue,  6 Oct 2020 14:44:31 -0600
Message-Id: <cover.1602011710.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: test_counters.sh]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kPtpR-001Mx2-NU
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:25 +0000
Subject: [Openipmi-developer] [PATCH v2 00/11] Introduce Simple atomic
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
that just count, and don't guard resource lifetimes. Counter will wrap
around to 0 when it overflows and should not be used to guard resource
lifetimes, device usage and open counts that control state changes, and
pm states.

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

Changes since Patch v1
-- Thanks for reviews and reviewed-by, and Acked-by tags. Updated
   the patches with the tags.
-- Addressed Kees's  and Joel's comments:
   1. Removed dec_return interfaces (Patch 1/11)
   2. Removed counter_simple interfaces to be added later with changes
      to drivers that use them (if any) (Patch 1/11)
   3. Comment and Changelogs updates to Patch 2/11

Kees, if this series is good, would you like to take this through your
tree or would you like to take this through mine?

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

 Documentation/core-api/counters.rst          | 103 +++++++++++
 MAINTAINERS                                  |   8 +
 drivers/acpi/acpi_extlog.c                   |   5 +-
 drivers/acpi/apei/ghes.c                     |   5 +-
 drivers/android/binder.c                     |  41 ++---
 drivers/android/binder_internal.h            |   3 +-
 drivers/base/dd.c                            |  19 +-
 drivers/base/devcoredump.c                   |   5 +-
 drivers/base/test/test_async_driver_probe.c  |  23 +--
 drivers/char/ipmi/ipmi_msghandler.c          |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c             |   9 +-
 drivers/edac/edac_pci.h                      |   5 +-
 drivers/edac/edac_pci_sysfs.c                |  28 +--
 drivers/misc/vmw_vmci/vmci_guest.c           |   9 +-
 include/linux/counters.h                     | 173 +++++++++++++++++++
 lib/Kconfig                                  |  10 ++
 lib/Makefile                                 |   1 +
 lib/test_counters.c                          | 157 +++++++++++++++++
 tools/testing/selftests/lib/Makefile         |   1 +
 tools/testing/selftests/lib/config           |   1 +
 tools/testing/selftests/lib/test_counters.sh |   5 +
 21 files changed, 546 insertions(+), 74 deletions(-)
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
