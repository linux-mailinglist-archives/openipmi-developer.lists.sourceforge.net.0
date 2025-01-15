Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F72A12E27
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jan 2025 23:18:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tYBhz-0003tS-Rd;
	Wed, 15 Jan 2025 22:17:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tglx@linutronix.de>) id 1tY7qT-0006sg-DC
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 18:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HoxPdbGDiDXMZjZ2YzakPSB0m74gINsG6VFgtuazYj8=; b=Sob6iIueQho1f4QNNzJKDqhYVY
 kYpqgcghlyYa5gPWRZAZcGbQJ4yX1APM6iaehJTV8iWD2zBhFSCcQ0xOICCgfU2krB0dtN252txI4
 U507rFGuGqLveDoF7p1XQDxW8Qi7+TOPakUb+jTWq/0FYSxofkqEeoO46XfLoGlC6bvU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HoxPdbGDiDXMZjZ2YzakPSB0m74gINsG6VFgtuazYj8=; b=DHGL45vWIA4lfdQR4El4nbul8R
 pQilILbRM2O/ULI7rj2iXAXMYqnjQqevFACqVXoBb4JMn4ESxVFbq7LGBGqfT2xMNwg9AAo94TUll
 VHG4KgldRM2n/LO3Yv0td/EEyiVT49kRBCG1xNmq8wHqXenAq2saJihDiPVdsIMYuL3s=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tY7qS-0007NH-Ew for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Jan 2025 18:10:25 +0000
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1736963561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HoxPdbGDiDXMZjZ2YzakPSB0m74gINsG6VFgtuazYj8=;
 b=O59TkAiVIoh/kyWqt3sD2QUaiElCxlt4joNfsm5Vy47rl6VB5TFRsEG8yyBoGzvY2r/6mY
 lQrxl2KFOtZwXB8o2yGswqA28AwPR3ILexVj+8YMlHNoNTQyAqrecm5DQu43fEOAoeu1zB
 AUUJUV3mFLL/jKj4Q1eejS9vRnjN/1NreJFiVLN6lXCv97Xxmp1pRrzkdAR4+8k7oYySE3
 EjRlx3bwRLZ1kPZatpooq203bOQXFsUoJ5K9wvWgIoGkzYbbWPFekFpYB6FKtIibo4IGCl
 3qtrgWckX7984+Okk9ULQbx1KIxKVOK20qnnIXjJMWBsTxDlkgtJ8kE9XE9ROg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1736963561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HoxPdbGDiDXMZjZ2YzakPSB0m74gINsG6VFgtuazYj8=;
 b=fzGlQJbELsuQf/TIokTn215dpIYwMgfAYRUXgXNteW1TJ/rfCFCi40yte9UtrzUzNBp68H
 ns68VXLDVpNCEbAA==
To: Joel Granados <joel.granados@kernel.org>, Thomas =?utf-8?Q?Wei=C3=9Fsc?=
 =?utf-8?Q?huh?=
 <linux@weissschuh.net>, Kees Cook <kees@kernel.org>, Luis Chamberlain
 <mcgrof@kernel.org>
In-Reply-To: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
Date: Wed, 15 Jan 2025 18:52:40 +0100
Message-ID: <87jzawarrr.ffs@tglx>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jan 10 2025 at 15:16, Joel Granados wrote: > sed:
 > sed --in-place \ > -e "s/struct ctl_table .table = &uts_kern/const struct
 ctl_table *table = \&uts_kern/" \ > kernel/utsname_sysctl.c > > Re [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [193.142.43.55 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [193.142.43.55 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.142.43.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tY7qS-0007NH-Ew
X-Mailman-Approved-At: Wed, 15 Jan 2025 22:17:53 +0000
Subject: Re: [Openipmi-developer] [PATCH v2] treewide: const qualify
 ctl_tables where applicable
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
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Corey Minyard <cminyard@mvista.com>, "Darrick J. Wong" <djwong@kernel.org>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 Joel Granados <joel.granados@kernel.org>, codalist@coda.cs.cmu.edu,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Song Liu <song@kernel.org>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, linux-security-module@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jan 10 2025 at 15:16, Joel Granados wrote:
> sed:
>     sed --in-place \
>       -e "s/struct ctl_table .table = &uts_kern/const struct ctl_table *table = \&uts_kern/" \
>       kernel/utsname_sysctl.c
>
> Reviewed-by: Song Liu <song@kernel.org>
> Acked-by: Steven Rostedt (Google) <rostedt@goodmis.org> # for kernel/trace/
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com> # SCSI
> Reviewed-by: Darrick J. Wong <djwong@kernel.org> # xfs
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Acked-by: Corey Minyard <cminyard@mvista.com>
> Signed-off-by: Joel Granados <joel.granados@kernel.org>

Acked-by: Thomas Gleixner <tglx@linutronix.de>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
