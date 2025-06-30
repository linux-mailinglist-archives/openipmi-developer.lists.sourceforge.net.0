Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF1CAEE6BE
	for <lists+openipmi-developer@lfdr.de>; Mon, 30 Jun 2025 20:29:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X7WJ0FEi9YcvJB0fvDQn0RuwZnFL9PfcMSOV88Ep+Io=; b=aoYe1sMrEwhq8cUCFsYKJUOQ7I
	YDQEO6ZFDLXHoUZ9H1IPas0wUMDyGJ0V+1ad+SS5hUp6r0aTp0rnCO1Wvxiiz0guG0MY9NoMRJlXb
	JP5Mi9zyeu6ZXkRGlINP3ZfVZyLOtg32+yB71Vxm/BdcxWNlZI/fHjGjQiHoy8Tejxbo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uWJFR-0001sn-AT;
	Mon, 30 Jun 2025 18:28:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1uWJFQ-0001sd-5Y
 for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Jun 2025 18:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6GX3ymDzGrweYlhqywB1KICndhTySLc/ZiXPgr7q2C8=; b=ZiK0jF81jwMIzgC14PXwBvh6WH
 vkwHOSDKTG7W8SqdtNdvtbD2uZ7VAltr8RxryteZv7IOqmoe7ZVOn92yv3lmS4oAkTExpV9oZXV3y
 GVNMTaHZsg/UspaHIWTFV0qqETLst+amrU69TcAkbBecaJqpNzZaIwAnmzOSHLjXRrEE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6GX3ymDzGrweYlhqywB1KICndhTySLc/ZiXPgr7q2C8=; b=iXoibIDdt9CACgWO79K0CZpu3y
 gOVOZRMMgeWVaKf3H1bGmUq4Gz0mM+Yubkq8TIjxdV5FozybVcqSfK6fGj5jlteknUGUpWUMLM4if
 CfAPgXRRIfqb94Ps2FhXOLoVNBtuSHjeGXloXbtarU1gV2RvUsb2wvxc5AkIg3kppwZY=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uWJFP-00071o-Mr for openipmi-developer@lists.sourceforge.net;
 Mon, 30 Jun 2025 18:28:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 218D060007;
 Mon, 30 Jun 2025 18:10:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CCFAC4CEE3;
 Mon, 30 Jun 2025 18:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1751307020;
 bh=fxZkgXKGh5iBCb4qthq91bumHw5ehMMShfTNuzW0adI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eFBJLteblUsp0DqASbWs9PzpZJ4uBChYu8+s7yQo/kPJqflav60S28zn3EYGYUrEC
 aG4z3M16lCDMs48NerVnQXX6WeD8YhTYmnl2YkCNeysT4gUZ4TSWXFIWNCB7V9tYDs
 9H6ZvaLLQJnEbmIPghDp0qP6sDDf/EAVfJXXYsLc=
Date: Mon, 30 Jun 2025 20:10:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Brendan Jackman <jackmanb@google.com>
Message-ID: <2025063054-abridge-conclude-3dad@gregkh>
References: <20250630-ipmi-fix-v1-1-2d496de3c856@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250630-ipmi-fix-v1-1-2d496de3c856@google.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 30, 2025 at 05:09:02PM +0000, Brendan Jackman
 wrote: > From: Dan Carpenter <dan.carpenter@linaro.org> > > commit
 fa332f5dc6fc662ad7d3200048772c96b861cf6b
 upstream > > The "intf" list itera [...] 
 Content analysis details:   (-0.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uWJFP-00071o-Mr
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

On Mon, Jun 30, 2025 at 05:09:02PM +0000, Brendan Jackman wrote:
> From: Dan Carpenter <dan.carpenter@linaro.org>
> 
> commit fa332f5dc6fc662ad7d3200048772c96b861cf6b upstream
> 
> The "intf" list iterator is an invalid pointer if the correct
> "intf->intf_num" is not found.  Calling atomic_dec(&intf->nr_users) on
> and invalid pointer will lead to memory corruption.
> 
> We don't really need to call atomic_dec() if we haven't called
> atomic_add_return() so update the if (intf->in_shutdown) path as well.
> 
> Fixes: 8e76741c3d8b ("ipmi: Add a limit on the number of users that may use IPMI")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> Message-ID: <aBjMZ8RYrOt6NOgi@stanley.mountain>
> Signed-off-by: Corey Minyard <corey@minyard.net>
> Signed-off-by: Brendan Jackman <jackmanb@google.com>
> ---
> I have tested this in 6.12 with Google's platform drivers added to
> reproduce the bug.  The bug causes the panic notifier chain to get
> corrupted leading to a crash. With the fix this goes away.
> 
> Applies to 6.6 too but I haven't tested it there.

So what kernels are you wanting this to be applied to?

thanks,

greg k-h


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
