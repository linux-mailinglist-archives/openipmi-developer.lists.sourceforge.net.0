Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E2C2AE045
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 Nov 2020 20:54:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kcZjC-0006U6-8h; Tue, 10 Nov 2020 19:54:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kcZjA-0006Th-EN
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 19:54:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vdba1It8LuruBRXATlGs5ogDOu37tb0jUQlcsfQ+i94=; b=UpFD7bijw7CJaWjTjyKMqd+On4
 8mCHGTYlOZRYwVoes4HiMG5M0fgpFR1E0umJ/bf8midgGxi4A3OYrG7VuyDES0L7kxaX6HcXzp4fd
 T/qHlsWgLvQJHeq5EmD9QmCDxJG7ZyAZ7Oicu21a9o9IvXs4Uymw7ozSnc28Q6CVuwXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Vdba1It8LuruBRXATlGs5ogDOu37tb0jUQlcsfQ+i94=; b=U
 /4NBopdhCK9S2zY141AXTSRKZWWtLkVdzkPlgIhs2kfFdASYRELoo1fuY7Ev3RCFyrya0TAIQ6PR2
 tD+3//HpIoE14pWWJEecd7TGkFeEHJFYN/qVDpPPnnAdgt+QE9ZgGKB++XlWgY2SPrJPu2Ul82+Zr
 rPNxZeF81cTcIvdY=;
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kcZit-00FuTD-11
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 19:54:52 +0000
Received: by mail-io1-f68.google.com with SMTP id t8so11075372iov.8
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 10 Nov 2020 11:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vdba1It8LuruBRXATlGs5ogDOu37tb0jUQlcsfQ+i94=;
 b=erhpGeuR4YZoPxfbaOj6VRTo5qEDTaMnmy8kz3XZUQlHcvUC5PAMnd4vRUgcWhnCY4
 HmjHbSPgIj5umTnUKC8XvX1IvbsCFZxMBGUdUE7TrHhyO2iCd6OhgwKqfD97WQg1umxw
 JFTX/vqjOOD2aZVjcPXZOK3wm7m2rMYTBiYoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vdba1It8LuruBRXATlGs5ogDOu37tb0jUQlcsfQ+i94=;
 b=DIPRrkHcC/GLCNHNgry3kCHhtFhxoSQ0WXVArJhuyrcxQQ//lasW8HKuZFy65SRybX
 axiZW6W/+NOtcCnTZAtufl0C8nboplLXaZqUTbTOK4pvGYdQ8xOiajf/88ROtAOEni0U
 wddShPzobr2MjmY0ID8pLjsoE79DdEm9rRCmyZogoTvrtREYWxuanDCjO3lgw0oemQ+f
 al5XkgJtyFmE9ZshmiNEHLF2XnYgalOuG0L3FWyUNM5TtkcoV3qqMAvvmSb1+JrFNng7
 TrNDr4cpwqZnZBhlGHBf7nBYmuXg9aFFRlvuu3Wck4F7Ilt7MOiMEZL2Is+EyEr7s9RF
 Cx7Q==
X-Gm-Message-State: AOAM533mi9ty6yfeQ+MHomUZaPICsFgC6cQpDuIp6QI5FM/Y7WuXV7ss
 x2maupyqbVRm5TWxoiUyXaIpGA==
X-Google-Smtp-Source: ABdhPJzSoGm8gSgvRaSBerc+sxmFJLhfNH27ldXelE/5n3b7bzL48Ie7m56QLtjKLU/yXqTHWYQj8w==
X-Received: by 2002:a6b:b30b:: with SMTP id c11mr15269551iof.175.1605038069386; 
 Tue, 10 Nov 2020 11:54:29 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id o14sm123971ilg.71.2020.11.10.11.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Nov 2020 11:54:28 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 peterz@infradead.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de, minyard@acm.org,
 arnd@arndb.de, mchehab@kernel.org, rric@kernel.org,
 valentina.manea.m@gmail.com, shuah@kernel.org, zohar@linux.ibm.com,
 dmitry.kasatkin@gmail.com, jmorris@namei.org, serge@hallyn.com
Date: Tue, 10 Nov 2020 12:53:26 -0700
Message-Id: <cover.1605027593.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.68 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: test_seqnum_ops.sh]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kcZit-00FuTD-11
Subject: [Openipmi-developer] [PATCH 00/13] Introduce seqnum_ops
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
Cc: linux-doc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-integrity@vger.kernel.org,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

There are a number of atomic_t usages in the kernel where atomic_t api
is used strictly for counting sequence numbers and other statistical
counters and not for managing object lifetime.

The purpose of these Sequence Number Ops is to clearly differentiate
atomic_t counter usages from atomic_t usages that guard object lifetimes,
hence prone to overflow and underflow errors.

The atomic_t api provides a wide range of atomic operations as a base
api to implement atomic counters, bitops, spinlock interfaces. The usages
also evolved into being used for resource lifetimes and state management.
The refcount_t api was introduced to address resource lifetime problems
related to atomic_t wrapping. There is a large overlap between the
atomic_t api used for resource lifetimes and just counters, stats, and
sequence numbers. It has become difficult to differentiate between the
atomic_t usages that should be converted to refcount_t and the ones that
can be left alone. Introducing seqnum_ops to wrap the usages that are
stats, counters, sequence numbers makes it easier for tools that scan
for underflow and overflow on atomic_t usages to detect overflow and
underflows to scan just the cases that are prone to errors.

Sequence Number api provides interfaces for simple atomic_t counter usages
that just count, and don't guard resource lifetimes. The seqnum_ops are
built on top of atomic_t api, providing a smaller subset of atomic_t
interfaces necessary to support atomic_t usages as simple counters.
This api has init/set/inc/dec/read and doesn't support any other atomic_t
ops with the intent to restrict the use of these interfaces as simple
counting usages.

Sequence Numbers wrap around to INT_MIN when it overflows and should not
be used to guard resource lifetimes, device usage and open counts that
control state changes, and pm states. Overflowing to INT_MIN is consistent
with the atomic_t api, which it is built on top of.

Using seqnum to guard lifetimes could lead to use-after free when it
overflows and undefined behavior when used to manage state changes and
device usage/open states.

In addition this patch series converts a few drivers to use the new api.
The following criteria is used for select variables for conversion:

1. Variable doesn't guard object lifetimes, manage state changes e.g:
   device usage counts, device open counts, and pm states.
2. Variable is used for stats and counters.
3. The conversion doesn't change the overflow behavior.
4. Note: inc_return() usages are changed to _inc() followed by _read()
   Patches: 03/13, 04/13, 09/13, 10/13, 11/13
5. drivers/acpi and drivers/acpi/apei patches have been reviewed
   before the rename, however in addition to rename, inc_return()
   usages are changed to _inc() followed by _read()
6. test_async_driver_probe, char/ipmi, and edac patches have been
   reviewed and no changes other than the rename to seqnum_ops.
7. security/integrity/ima: Okay to depend on CONFIG_64BIT? 

The work for this is a follow-on to the discussion and review of
Introduce Simple atomic counters patch series:

//lore.kernel.org/lkml/cover.1602209970.git.skhan@linuxfoundation.org/

Based on the feedback to restrict and limit the scope:
- dropped inc_return()
- renamed interfaces to match the intent and also shorten the
  interface names.

Shuah Khan (13):
  seqnum_ops: Introduce Sequence Number Ops
  selftests: lib:test_seqnum_ops: add new test for seqnum_ops
  drivers/acpi: convert seqno seqnum_ops
  drivers/acpi/apei: convert seqno to seqnum_ops
  drivers/base/test/test_async_driver_probe: convert to use seqnum_ops
  drivers/char/ipmi: convert stats to use seqnum_ops
  drivers/edac: convert pci counters to seqnum_ops
  drivers/oprofile: convert stats to use seqnum_ops
  drivers/staging/rtl8723bs: convert stats to use seqnum_ops
  usb: usbip/vhci: convert seqno to seqnum_ops
  drivers/staging/rtl8188eu: convert stats to use seqnum_ops
  drivers/staging/unisys/visorhba: convert stats to use seqnum_ops
  security/integrity/ima: converts stats to seqnum_ops

 Documentation/core-api/atomic_ops.rst         |   4 +
 Documentation/core-api/index.rst              |   1 +
 Documentation/core-api/seqnum_ops.rst         | 126 ++++++++++++++
 MAINTAINERS                                   |   8 +
 drivers/acpi/acpi_extlog.c                    |   6 +-
 drivers/acpi/apei/ghes.c                      |   6 +-
 drivers/base/test/test_async_driver_probe.c   |  26 +--
 drivers/char/ipmi/ipmi_msghandler.c           |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c              |   9 +-
 drivers/char/ipmi/ipmi_ssif.c                 |   9 +-
 drivers/edac/edac_pci.h                       |   5 +-
 drivers/edac/edac_pci_sysfs.c                 |  28 ++--
 drivers/oprofile/buffer_sync.c                |   9 +-
 drivers/oprofile/event_buffer.c               |   3 +-
 drivers/oprofile/oprof.c                      |   3 +-
 drivers/oprofile/oprofile_stats.c             |  11 +-
 drivers/oprofile/oprofile_stats.h             |  11 +-
 drivers/oprofile/oprofilefs.c                 |   3 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  23 ++-
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |   3 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  33 ++--
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |   3 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |   3 +-
 .../staging/unisys/visorhba/visorhba_main.c   |  37 +++--
 drivers/usb/usbip/vhci.h                      |   3 +-
 drivers/usb/usbip/vhci_hcd.c                  |   9 +-
 drivers/usb/usbip/vhci_rx.c                   |   3 +-
 include/linux/oprofile.h                      |   3 +-
 include/linux/seqnum_ops.h                    | 154 ++++++++++++++++++
 lib/Kconfig                                   |   9 +
 lib/Makefile                                  |   1 +
 lib/test_seqnum_ops.c                         | 154 ++++++++++++++++++
 security/integrity/ima/ima.h                  |   5 +-
 security/integrity/ima/ima_api.c              |   2 +-
 security/integrity/ima/ima_fs.c               |   4 +-
 security/integrity/ima/ima_queue.c            |   7 +-
 tools/testing/selftests/lib/Makefile          |   1 +
 tools/testing/selftests/lib/config            |   1 +
 .../testing/selftests/lib/test_seqnum_ops.sh  |  10 ++
 40 files changed, 637 insertions(+), 111 deletions(-)
 create mode 100644 Documentation/core-api/seqnum_ops.rst
 create mode 100644 include/linux/seqnum_ops.h
 create mode 100644 lib/test_seqnum_ops.c
 create mode 100755 tools/testing/selftests/lib/test_seqnum_ops.sh

-- 
2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
