Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CE72B2537
	for <lists+openipmi-developer@lfdr.de>; Fri, 13 Nov 2020 21:14:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kdfT0-0005Je-KF; Fri, 13 Nov 2020 20:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kdd9Z-0003ls-B6
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Nov 2020 17:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wlkCnCceQqz7r02K1vtWGsLoDGFR8kTVMD9I+999BVU=; b=VKp3Vokj1xcNtwfCkC7moJt6BM
 Lp4TqeNOWQ26xxSkGB0yb4CuJ9LleEXXfvty9Qf93qwLdfcFsO3nYjlAXmEb5lCuB9nKoBRmEqR58
 qOixFwbe9hmCbcohmY+KzujZg0aDXmU0KvnabhVOQa6lNGPBlHobPQJv3PYcvmRdoT3U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wlkCnCceQqz7r02K1vtWGsLoDGFR8kTVMD9I+999BVU=; b=Q
 h3PQAwR7N+HBWwmcJyZB7OZsRvgY1LGctcuMh1M7ZVePTh2WmznhKdthoH0ZJ3YeUpU0AsQW3HEkW
 RYLXP2uS6zZpBgehXdoFSjcbrjCEvY4CHhx95SQY9gNpZnPhaQy2+pW95VLGUMXmJj8DyPT/cJpbP
 2w6U9axz/Mhs1zFU=;
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kdd9X-00Ag9f-Bw
 for openipmi-developer@lists.sourceforge.net; Fri, 13 Nov 2020 17:46:29 +0000
Received: by mail-il1-f195.google.com with SMTP id y17so9216933ilg.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Nov 2020 09:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wlkCnCceQqz7r02K1vtWGsLoDGFR8kTVMD9I+999BVU=;
 b=f97H1ARf2FMEwRo6bCGKK0SmxlmBhNSJtwWc3H6Tp4QKaxU08w23m3Se3VH2Y6LKi1
 gseBKxaY3ws5p5mowtY+hqCqm8ItrgLkWZnDGKw5mEp6i0F2TmRT/ux7nL/fZREJMVer
 c6f8DNGj7zG6O5hQfyRFzevjFKbqYn7LHQRmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wlkCnCceQqz7r02K1vtWGsLoDGFR8kTVMD9I+999BVU=;
 b=W2P1sy3pze9zcFVppcHPK1fuU9IjXkOUR0nPzqCoY+lTSItIHrLDE2pf4iIBBKj+tN
 CbGAvWZuPdfddDmhe+L25hOJ9kKbRO8hmwFpq4650+7nXfADr3XiDR4qvEgobfpjk8+P
 odPswihKgrb060HFkkjsEXJdEoM1Uef35BfcJyLtlQTxbjbG6H3cLsVEieihk+WQgLQI
 MNBN9ZqI/CvLWoCmqrALQKuswLoJl8TpZnIN+wPruAKbJix39ZXWsCMXfCPoy7C+u0of
 JgrpBZ8RaoEhwNMN1bsuHnW0D+sfOhOiqu/S59cWwm5OrnOAz80ZMWSyEbFigariGWRh
 hTRA==
X-Gm-Message-State: AOAM533JIdFjkRDTfFmxUzDkgQIAW2pxhjNbSjjoEwreS2pL6CJEyAao
 Bffo92G3zubUynkUHsaOwVUv3Q==
X-Google-Smtp-Source: ABdhPJzWnweOgT/x9lrJyFWdNrmH6LCnt9T1bjCno9YJu8lBPBBn+UixdhXRz6BHbKAiFEys/ytZcw==
X-Received: by 2002:a92:9acd:: with SMTP id c74mr690025ill.299.1605289580958; 
 Fri, 13 Nov 2020 09:46:20 -0800 (PST)
Received: from shuah-t480s.internal (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id y14sm4772585ilb.66.2020.11.13.09.46.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Nov 2020 09:46:20 -0800 (PST)
From: Shuah Khan <skhan@linuxfoundation.org>
To: corbet@lwn.net, keescook@chromium.org, gregkh@linuxfoundation.org,
 peterz@infradead.org, rafael@kernel.org, lenb@kernel.org,
 james.morse@arm.com, tony.luck@intel.com, bp@alien8.de, minyard@acm.org,
 arnd@arndb.de, mchehab@kernel.org, rric@kernel.org,
 valentina.manea.m@gmail.com, shuah@kernel.org, zohar@linux.ibm.com,
 dmitry.kasatkin@gmail.com, jmorris@namei.org, serge@hallyn.com
Date: Fri, 13 Nov 2020 10:46:02 -0700
Message-Id: <cover.1605287778.git.skhan@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.195 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: test_seqnum_ops.sh]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kdd9X-00Ag9f-Bw
Subject: [Openipmi-developer] [PATCH v2 00/13] Introduce seqnum_ops
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

Sequence Number api provides interfaces for unsigned atomic up counters
leveraging atomic_t and atomic64_t ops underneath.

There are a number of atomic_t usages in the kernel where atomic_t api
is used for counting sequence numbers and other statistical counters.
Several of these usages, convert atomic_read() and atomic_inc_return()
return values to unsigned. Introducing sequence number ops supports
these use-cases with a standard core-api.

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

In addition, to supporting sequence number use-cases, Sequence Number Ops
helps differentiate atomic_t counter usages from atomic_t usages that guard
object lifetimes, hence prone to overflow and underflow errors from up
counting use-cases. It becomes easier for tools that scan for underflow and
overflow on atomic_t usages to detect overflow and underflows to scan just
the cases that are prone to errors.

Changes since v1:
- Removed dec based on Greg KH's comments
- Removed read/set/inc based on the discussion with Peter Zijlstra
- Interfaces are restricted to init, increment and return new value,
  and fetch current value.
- Interfaces return u32 and u64 - a few reviewers suggested unsigned.
  After reviewing a few use-cases, I determined this is a good path
  forward. It adds unsigned atomic support that doesn't exist now,
  and simplifies code in drivers that currently convert atomic_t return
  values to unsigned. All the drivers changes included in this series
  used to convert atomic_t returns to unsigned.

Patch v1 thread:
https://lore.kernel.org/lkml/cover.1605027593.git.skhan@linuxfoundation.org/

Counters thread:
lore.kernel.org/lkml/cover.1602209970.git.skhan@linuxfoundation.org

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
 Documentation/core-api/seqnum_ops.rst         |  89 +++++++++++++
 MAINTAINERS                                   |   8 ++
 drivers/acpi/acpi_extlog.c                    |   8 +-
 drivers/acpi/apei/ghes.c                      |   8 +-
 drivers/base/test/test_async_driver_probe.c   |  28 +++--
 drivers/char/ipmi/ipmi_msghandler.c           |   9 +-
 drivers/char/ipmi/ipmi_si_intf.c              |   9 +-
 drivers/char/ipmi/ipmi_ssif.c                 |   9 +-
 drivers/edac/edac_pci.h                       |   5 +-
 drivers/edac/edac_pci_sysfs.c                 |  30 ++---
 drivers/oprofile/buffer_sync.c                |   9 +-
 drivers/oprofile/event_buffer.c               |   3 +-
 drivers/oprofile/oprof.c                      |   3 +-
 drivers/oprofile/oprofile_stats.c             |  11 +-
 drivers/oprofile/oprofile_stats.h             |  11 +-
 drivers/oprofile/oprofilefs.c                 |   3 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  23 +++-
 .../staging/rtl8188eu/include/rtw_mlme_ext.h  |   3 +-
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   3 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  33 +++--
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |   3 +-
 .../staging/rtl8723bs/include/rtw_mlme_ext.h  |   3 +-
 .../staging/unisys/visorhba/visorhba_main.c   |  21 ++--
 drivers/usb/usbip/vhci.h                      |   3 +-
 drivers/usb/usbip/vhci_hcd.c                  |   7 +-
 drivers/usb/usbip/vhci_rx.c                   |   5 +-
 include/linux/oprofile.h                      |   3 +-
 include/linux/seqnum_ops.h                    | 118 +++++++++++++++++
 lib/Kconfig                                   |   9 ++
 lib/Makefile                                  |   1 +
 lib/test_seqnum_ops.c                         | 119 ++++++++++++++++++
 security/integrity/ima/ima.h                  |   5 +-
 security/integrity/ima/ima_api.c              |   3 +-
 security/integrity/ima/ima_fs.c               |   5 +-
 security/integrity/ima/ima_queue.c            |   7 +-
 tools/testing/selftests/lib/Makefile          |   1 +
 tools/testing/selftests/lib/config            |   1 +
 .../testing/selftests/lib/test_seqnum_ops.sh  |  10 ++
 40 files changed, 524 insertions(+), 110 deletions(-)
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
