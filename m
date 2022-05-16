Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2326752877C
	for <lists+openipmi-developer@lfdr.de>; Mon, 16 May 2022 16:50:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nqc3G-0002om-25; Mon, 16 May 2022 14:50:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pmladek@suse.com>) id 1nqc3B-0002ob-S4
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 14:50:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KQiIlBeAtlsgCeLOjjHzTpkuGh7+XAuIIUDB14idFd4=; b=jABd2h3HXapFP2CjMJCsY70rya
 UTaJu0CbclMscX4rWiSW5mDaoFdAGxL16qb9mnKOoM+zGDiSv0TlOqMB89y8gM6/0Ztwxhjk/NCka
 /YjcURB5Ac/ZnwsKmrFrLeOJyhVyt5KOiDqvU2yfQmJRWpJ5NvufOLqTRMreUcMXj1DM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KQiIlBeAtlsgCeLOjjHzTpkuGh7+XAuIIUDB14idFd4=; b=GYBGBI7owtq3H/kRtBrqicYUjk
 w58za5DsBjKBw5NpbZTy4aMkPg2/05H40N3z7/hY5ZKRl3nC0uP4RRRLemrV1BgCpbCP2XVeHw6pP
 IN73U9eVl3vdk2b5qrW21wS9IRrRoZYzKVHaQmFfm4ZNLFk03fQlMmIJnwnzk49hdeFc=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nqc39-00HGEM-Qj
 for openipmi-developer@lists.sourceforge.net; Mon, 16 May 2022 14:50:20 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
 by smtp-out2.suse.de (Postfix) with ESMTP id 8A0901FB39;
 Mon, 16 May 2022 14:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1652712613; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KQiIlBeAtlsgCeLOjjHzTpkuGh7+XAuIIUDB14idFd4=;
 b=S4QT9bHIulh2DX7+Td1E1eHZ8ylXqLGd87dgOU5qON7f0TC2viT1I31ABT9u1YFo+zVF7s
 CRf1jIcOXQaAUTOOLTnLyfyBeX0en2TY7mgyp7gvJnFWNhPu01YU8FRcK1p4/UGj8Io8lk
 XM2tY8ZdnQQ59J0fQXUB5igw6KG7gMQ=
Received: from suse.cz (unknown [10.100.201.202])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by relay2.suse.de (Postfix) with ESMTPS id 0B9D32C142;
 Mon, 16 May 2022 14:50:13 +0000 (UTC)
Date: Mon, 16 May 2022 16:50:12 +0200
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YoJkpAp8XdS7ROgd@alley>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-24-gpiccoli@igalia.com>
 <20220510134014.3923ccba@gandalf.local.home>
 <c8818906-f113-82b6-b58b-d47ae0c16b4f@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c8818906-f113-82b6-b58b-d47ae0c16b4f@igalia.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 2022-05-11 17:03:51, Guilherme G. Piccoli wrote: >
 On 10/05/2022 14:40, Steven Rostedt wrote: > > On Wed, 27 Apr 2022 19:49:17
 -0300 > > "Guilherme G. Piccoli" <gpiccoli@igalia.com> wrote: > > [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nqc39-00HGEM-Qj
Subject: Re: [Openipmi-developer] [PATCH 23/30] printk: kmsg_dump: Introduce
 helper to inform number of dumpers
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
From: Petr Mladek via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Petr Mladek <pmladek@suse.com>
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, rcu@vger.kernel.org, bp@alien8.de,
 luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed 2022-05-11 17:03:51, Guilherme G. Piccoli wrote:
> On 10/05/2022 14:40, Steven Rostedt wrote:
> > On Wed, 27 Apr 2022 19:49:17 -0300
> > "Guilherme G. Piccoli" <gpiccoli@igalia.com> wrote:
> > 
> >> Currently we don't have a way to check if there are dumpers set,
> >> except counting the list members maybe. This patch introduces a very
> >> simple helper to provide this information, by just keeping track of
> >> registered/unregistered kmsg dumpers. It's going to be used on the
> >> panic path in the subsequent patch.
> > 
> > FYI, it is considered "bad form" to reference in the change log "this
> > patch". We know this is a patch. The change log should just talk about what
> > is being done. So can you reword your change logs (you do this is almost
> > every patch). Here's what I would reword the above to be:
> > 
> >  Currently we don't have a way to check if there are dumpers set, except
> >  perhaps by counting the list members. Introduce a very simple helper to
> >  provide this information, by just keeping track of registered/unregistered
> >  kmsg dumpers. This will simplify the refactoring of the panic path.
> 
> Thanks for the hint, you're right - it's almost in all of my patches.
> I'll reword all of them (except the ones already merged) to remove this
> "bad form".

Shame on me that I do not care that much about the style of the commit
message :-)

Anyway, the code looks good to me. With the better commit message:

Reviewed-by: Petr Mladek <pmladek@suse.com>

Best Regards,
Petr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
