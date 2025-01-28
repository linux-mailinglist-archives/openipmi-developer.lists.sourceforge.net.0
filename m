Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B0A20996
	for <lists+openipmi-developer@lfdr.de>; Tue, 28 Jan 2025 12:23:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tcjgE-0007MB-Bo;
	Tue, 28 Jan 2025 11:22:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.granados@kernel.org>) id 1tcjgD-0007M1-Ev
 for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Jan 2025 11:22:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hyXa291ZiBFa2abNTHu016AfX8E2h8XxDNeXleklmPc=; b=mt3ec7M8gcQhXUFZ1tOShRdjZB
 HvJ8uUKlUXH16xhNABj9uJf5vlf4yCxmqdI1lGMtLiLfYfLbjWWSQrHZ03HqVsV+viMR0rhPaKOIO
 7HgeG72mAUfUjTFj8koaPz0/WWGWbXHaMALjh1yOt3UTJdjMAoItCx0oRKFh4e/0m+ew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hyXa291ZiBFa2abNTHu016AfX8E2h8XxDNeXleklmPc=; b=M0c4scay8af3LTN9DW7q/s5/Tp
 A9MZ1fgQTT0RNvkxqyTkP01EEKPP0GuE3HQoEpC5+6caTTD+GEqDgb1sjNFQYGJzea+Zxpv0mzMxA
 jM71XhRSD7u2zMNn9vZyigNb/4q0mPrfCPe7P967atMwvUQn1A4M1Gd2juqc1Enqitjk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tcjgC-0007r8-Pp for openipmi-developer@lists.sourceforge.net;
 Tue, 28 Jan 2025 11:22:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3179E5C5D79;
 Tue, 28 Jan 2025 11:22:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98109C4CEDF;
 Tue, 28 Jan 2025 11:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1738063362;
 bh=AJfDJn9pFkPItjs+l9CjDlC33TdlTCE01Kr4mfJIOJE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=foTouGKI5Xpt6DiifiySGU1Px4B0JlxynZkL/A+4GJ+F1wUAFkM/N4G83a9sI8N06
 lsMHA2F0I+BGkV1h4oylhwmSeJznMzbN+UJy9qwbYRK5QlpfqNfv8Msq/ndA/iDm4I
 JYp3P2GR22dNEIcBnZOOATJGYPU+gMIFK9XfLLma3B24+UKToDLZL/ZLBF6bwp16qy
 HMKr9svtYad8MrCuOMMF5t2I0WLB8bGS9HGYMu9w94+SD6sanYCztaTmP2cubx4D+F
 lhSPEntAtoYhJR/j92VqRwE5MifEf7tNzvj9NQnTwv0sbHofELHMou005/QzH1lonP
 yczCENnq4hKEA==
Date: Tue, 28 Jan 2025 12:22:37 +0100
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <u2fwibsnbfvulxj6adigla6geiafh2vuve4hcyo4vmeytwjl7p@oz6xonrq5225>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
 <nslqrapp4v3rknjgtfk4cg64ha7rewrrg24aslo2e5jmxfwce5@t4chrpuk632k>
 <CAMj1kXEZPe8zk7s67SADK9wVH3cfBup-sAZSC6_pJyng9QT7aw@mail.gmail.com>
 <f4lfo2fb7ajogucsvisfd5sg2avykavmkizr6ycsllcrco4mo3@qt2zx4zp57zh>
 <87jzag9ugx.fsf@intel.com> <Z5epb86xkHQ3BLhp@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z5epb86xkHQ3BLhp@casper.infradead.org>
X-Spam-Score: -6.5 (------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 27, 2025 at 03:42:39PM +0000,
 Matthew Wilcox wrote:
 > On Mon, Jan 27, 2025 at 04:55:58PM +0200, Jani Nikula wrote: > > You could
 have static const within functions too. You get the rodata [...] 
 Content analysis details:   (-6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tcjgC-0007r8-Pp
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
From: Joel Granados via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Joel Granados <joel.granados@kernel.org>
Cc: linux-aio@kvack.org, linux-hyperv@vger.kernel.org,
 Corey Minyard <cminyard@mvista.com>, Kees Cook <kees@kernel.org>,
 "Darrick J. Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, keyrings@vger.kernel.org,
 linux-hardening@vger.kernel.org, linux-riscv@lists.infradead.org,
 codalist@coda.cs.cmu.edu, Alexander Gordeev <agordeev@linux.ibm.com>,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Song Liu <song@kernel.org>,
 kexec@lists.infradead.org,
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jan 27, 2025 at 03:42:39PM +0000, Matthew Wilcox wrote:
> On Mon, Jan 27, 2025 at 04:55:58PM +0200, Jani Nikula wrote:
> > You could have static const within functions too. You get the rodata
> > protection and function local scope, best of both worlds?
> 
> timer_active is on the stack, so it can't be static const.
> 
> Does this really need to be cc'd to such a wide distribution list?
That is a very good question. I removed 160 people from the original
e-mail and left the ones that where previously involved with this patch
and left all the lists for good measure. But it seems I can reduce it
even more.

How about this: For these treewide efforts I just leave the people that
are/were involved in the series and add two lists: linux-kernel and
linux-hardening.

Unless someone screams, I'll try this out on my next treewide.

Thx for the feedback

Best

-- 

Joel Granados


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
