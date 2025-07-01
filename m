Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F10BCAEF527
	for <lists+openipmi-developer@lfdr.de>; Tue,  1 Jul 2025 12:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iPd2AiPSTvFbGbFFr0VDUU8LAFgo2R08jzTPI/cNbWo=; b=EBd4qFxVi2L0c5FuXZlXHMvyPr
	vNpsQ0ZrQ7u+J+UYBuAitURNRBqwAmw0/PWzLCS3o8qK3ZNnzWRf0DGYbLGGReSZNzeFTpksFNyc5
	y1PRrmZuZT2fQRV0p1PIqNfC+GVB2eo1wZNCtTTz3yhOMVZ4MjWhd85pdz5aC67MiOyM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uWYJH-0003Ku-BK;
	Tue, 01 Jul 2025 10:33:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1uWYJE-0003Kl-R5
 for openipmi-developer@lists.sourceforge.net;
 Tue, 01 Jul 2025 10:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9TxwohY4Sxg2mZVwGn78WTGclv7J5XB9G5yXO+E0Wuw=; b=StKzvlwJ6NOVkcF3zM427fONMn
 IVtwO4E5ZO8FqWneQ0nofQ6h9ZsGe77EylGxRU+wGONZZsr1ZbJzRgilWrPCy40g9P+chvMfKj6Bj
 JFREjUpj1ibfN4cAzUvvkrKKssyjoDbH1jCsay/6kW7vGnBXd9eKGdbBkZxKl4WNUxbM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9TxwohY4Sxg2mZVwGn78WTGclv7J5XB9G5yXO+E0Wuw=; b=C6H+N1eNS/538iESnaIuY6jb1y
 eA8wq5E3TJSQV/CC6jFuWx8Vyu0U56IYNQYcnB14ST+jnrKrxtU08pPQ18sto+VVdJNBQ0KU4feFe
 dtV50rXpI10Sm/xs1kE3VIdQ9z7dKl0YBu9WicCovpGsQixBgpqpTgN+zan/1LHpHRzE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uWYJD-0003mI-Bt for openipmi-developer@lists.sourceforge.net;
 Tue, 01 Jul 2025 10:33:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E24AD5C5949;
 Tue,  1 Jul 2025 10:14:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F116C4CEEF;
 Tue,  1 Jul 2025 10:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1751364856;
 bh=Wlx4TnlV2QM7/+quU7XTzCU416QeaJFHMjUHbSMNTag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fg/PIxLOrQBZU1J6+wD96e7RnK8h+Hoy0vkepORcngWD8z2e9ZWJTwzDAC+b6T0vI
 BwbNLzZ1B6EExuyXnc4KKEtK/z5Eyd+5wSeG0iZnyFth5DXcX6fBjUSjMz1H7Q20j9
 6FZJ5Ko9vTr5CEGhU5TtKGKTOvv9/3/2AN16LXPk=
Date: Tue, 1 Jul 2025 12:14:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brendan Jackman <jackmanb@google.com>
Message-ID: <2025070142-equation-unlighted-9720@gregkh>
References: <20250630-ipmi-fix-v1-1-2d496de3c856@google.com>
 <2025063054-abridge-conclude-3dad@gregkh>
 <DB0MKNAAHYVK.3V2BN2WP3C7ZI@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB0MKNAAHYVK.3V2BN2WP3C7ZI@google.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jul 01, 2025 at 09:52:55AM +0000, Brendan Jackman
 wrote: > On Mon Jun 30, 2025 at 6:10 PM UTC, Greg KH wrote: > > On Mon, Jun
 30, 2025 at 05:09:02PM +0000, Brendan Jackman wrote: > >> From: Da [...] 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uWYJD-0003mI-Bt
Subject: Re: [Openipmi-developer] [PATCH stable] ipmi:msghandler: Fix
 potential memory corruption in ipmi_create_user()
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
Cc: Corey Minyard <cminyard@mvista.com>, Corey Minyard <minyard@acm.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net,
 Dan Carpenter <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 01, 2025 at 09:52:55AM +0000, Brendan Jackman wrote:
> On Mon Jun 30, 2025 at 6:10 PM UTC, Greg KH wrote:
> > On Mon, Jun 30, 2025 at 05:09:02PM +0000, Brendan Jackman wrote:
> >> From: Dan Carpenter <dan.carpenter@linaro.org>
> >> 
> >> commit fa332f5dc6fc662ad7d3200048772c96b861cf6b upstream
> >> 
> >> The "intf" list iterator is an invalid pointer if the correct
> >> "intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
> >> and invalid pointer will lead to memory corruption.
> >> 
> >> We don't really need to call atomic_dec() if we haven't called
> >> atomic_add_return() so update the if (intf->in_shutdown) path as well.
> >> 
> >> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
> >> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> >> Message-ID: <aBjMZ8RYrOt6NOgi@stanley.mountain>
> >> Signed-off-by: Corey Minyard <corey@minyard.net>
> >> Signed-off-by: Brendan Jackman <jackmanb@google.com>
> >> ---
> >> I have tested this in 6.12 with Google's platform drivers added to
> >> reproduce the bug.  The bug causes the panic notifier chain to get
> >> corrupted leading to a crash. With the fix this goes away.
> >> 
> >> Applies to 6.6 too but I haven't tested it there.
> >
> > So what kernels are you wanting this to be applied to?
> 
> Right, sorry for the ambiguity.  I've just applied the patch to 6.6 and
> booted QEMU and it worked fine.
> 
> I have not reproduced a crash in 6.6 but it's pretty clearly a real bug
> (it decrements the target of an uninitialized pointer).
> 
> So if you're OK with that then please apply to 6.6 and 6.12. Otherwise
> just 6.12 is fine, I will send another PATCH if I ever hit the issue for
> real in 6.6.

But why would we skip 6.15.y?  You can't apply patches to only older
stable kernels, as that would cause users to have regressions when they
move to newer ones. :(

greg k-h

> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
