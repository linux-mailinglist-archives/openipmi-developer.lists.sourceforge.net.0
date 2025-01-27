Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 212C4A1D74B
	for <lists+openipmi-developer@lfdr.de>; Mon, 27 Jan 2025 14:51:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tcPVz-00021d-Ao;
	Mon, 27 Jan 2025 13:50:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.granados@kernel.org>) id 1tcPVM-0001yB-EO
 for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Jan 2025 13:50:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=epQcBRbikRChnEcLD7GohI/p/yPUxTUqgScFKmNVdcQ=; b=RgM9j1P0tdmH4xriSGwyi9axio
 l/vKOqmZ2YLgp/Md+1BqhUWag0+8XxMfGZwq0+CKzDxfN94buFiZQ9pueINlls70wjlzLlSiLr3yF
 CxZ3F/Zzuhfku+fv0A7xDy/hvUDB/R4F1vdYo53NNq9prQ+f0Jhhkar1EWmL0K9qDDS0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=epQcBRbikRChnEcLD7GohI/p/yPUxTUqgScFKmNVdcQ=; b=i7gyiOnmPLXOZkb09u1TK8p5um
 Muutr9N5LDf+xWuLVSk8Qlaumad3kU3rRKtoTmczDQL99CD71Zxc/ivlvWktcXzEIRVcpiSLY3DPk
 QE0XQsvUY5Pdk3m7qG4yPBcUQAMdcFArWhcCCjpJc0nBffhxWHxKCmcfkHbycymXceKc=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tcPVD-0000nd-4T for openipmi-developer@lists.sourceforge.net;
 Mon, 27 Jan 2025 13:50:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 554B0A4154E;
 Mon, 27 Jan 2025 13:48:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 881ACC4CED2;
 Mon, 27 Jan 2025 13:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737985800;
 bh=laZX1iWKmTFe6EBXe6dQ6V5dBHky9feUPubV8bbHYy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ITreSYYkYqJo0yzT/NmeCNaU8ylN9fF82uixbVQhbAMNhn/x1ksvsdeN2BZIjx7Av
 6jRzLOfnz1KOiZ8BN/+a6yzSKjX86nOzP6ewnKK12LbyYoLRgr6MitIVZMs+Q9nRjt
 1O56sOuQWf9/oW9JBeL1K1Ep9SPnbGRY0gAqf1BfWdrmsV6P6rbrAzrEzJaWATIpCg
 PxgyGHOSh+1Dp+na/sGNdWcGsgzNCRs4/nnMHS16Kt8UOkwJO9cYsDiIOKruHAZkDs
 tuJVwo0MPlNeiRHuQkLVgJEWRQ8mSboCfx8PwGZonQ0+bdJkEjI8BLPDWS5oZchNDY
 iBi9Q4ViZ4cfA==
Date: Mon, 27 Jan 2025 14:49:55 +0100
To: Ard Biesheuvel <ardb@kernel.org>
Message-ID: <f4lfo2fb7ajogucsvisfd5sg2avykavmkizr6ycsllcrco4mo3@qt2zx4zp57zh>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <Z4+jwDBrZNRgu85S@li-008a6a4c-3549-11b2-a85c-c5cc2836eea2.ibm.com>
 <nslqrapp4v3rknjgtfk4cg64ha7rewrrg24aslo2e5jmxfwce5@t4chrpuk632k>
 <CAMj1kXEZPe8zk7s67SADK9wVH3cfBup-sAZSC6_pJyng9QT7aw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEZPe8zk7s67SADK9wVH3cfBup-sAZSC6_pJyng9QT7aw@mail.gmail.com>
X-Spam-Score: -3.8 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jan 22, 2025 at 01:41:35PM +0100,
 Ard Biesheuvel wrote:
 > On Wed, 22 Jan 2025 at 13:25, Joel Granados <joel.granados@kernel.org>
 wrote: > > > > On Tue, Jan 21, 2025 at 02:40:16PM +0100, Alexan [...] 
 Content analysis details:   (-3.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tcPVD-0000nd-4T
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
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>, linux-mm@kvack.org,
 keyrings@vger.kernel.org, linux-hardening@vger.kernel.org,
 Alexander Gordeev <agordeev@linux.ibm.com>, linux-riscv@lists.infradead.org,
 io-uring@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-security-module@vger.kernel.org, codalist@coda.cs.cmu.edu,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-trace-kernel@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
 "Steven Rostedt \(Google\)" <rostedt@goodmis.org>, linux-raid@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, openipmi-developer@lists.sourceforge.net,
 intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 fsverity@lists.linux.dev, linux-nfs@vger.kernel.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Song Liu <song@kernel.org>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 netfs@lists.linux.dev, bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jan 22, 2025 at 01:41:35PM +0100, Ard Biesheuvel wrote:
> On Wed, 22 Jan 2025 at 13:25, Joel Granados <joel.granados@kernel.org> wrote:
> >
> > On Tue, Jan 21, 2025 at 02:40:16PM +0100, Alexander Gordeev wrote:
> > > On Fri, Jan 10, 2025 at 03:16:08PM +0100, Joel Granados wrote:
> > >
> > > Hi Joel,
> > >
> > > > Add the const qualifier to all the ctl_tables in the tree except for
> > > > watchdog_hardlockup_sysctl, memory_allocation_profiling_sysctls,
> > > > loadpin_sysctl_table and the ones calling register_net_sysctl (./net,
> > > > drivers/inifiniband dirs). These are special cases as they use a
> > > > registration function with a non-const qualified ctl_table argument or
> > > > modify the arrays before passing them on to the registration function.
> > > >
> > > > Constifying ctl_table structs will prevent the modification of
> > > > proc_handler function pointers as the arrays would reside in .rodata.
> > > > This is made possible after commit 78eb4ea25cd5 ("sysctl: treewide:
> > > > constify the ctl_table argument of proc_handlers") constified all the
> > > > proc_handlers.
> > >
> > > I could identify at least these occurences in s390 code as well:
> > Hey Alexander
> >
> > Thx for bringing these to my attention. I had completely missed them as
> > the spatch only deals with ctl_tables outside functions.
> >
> > Short answer:
> > These should not be included in the current patch because they are a
> > different pattern from how sysctl tables are usually used. So I will not
> > include them.
> >
> > With that said, I think it might be interesting to look closer at them
> > as they seem to be complicating the proc_handler (I have to look at them
> > closer).
> >
> > I see that they are defining a ctl_table struct within the functions and
> > just using the data (from the incoming ctl_table) to forward things down
> > to proc_do{u,}intvec_* functions. This is very odd and I have only seen
> > it done in order to change the incoming ctl_table (which is not what is
> > being done here).
> >
> > I will take a closer look after the merge window and circle back with
> > more info. Might take me a while as I'm not very familiar with s390
> > code; any additional information on why those are being used inside the
> > functions would be helpfull.
> >
> 
> Using const data on the stack is not as useful, because the stack is
> always mapped writable.
> 
> Global data structures marked 'const' will be moved into an ELF
> section that is typically mapped read-only in its entirely, and so the
> data cannot be modified by writing to it directly. No such protection
> is possible for the stack, and so the constness there is only enforced
> at compile time.
I completely agree with you. No reason to use const within those
functions. But why define those ctl_tables in function to begin with.
Can't you just use the ones that are defined outside the functions?

Best


-- 

Joel Granados


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
