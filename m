Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E64481A3
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 15:24:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk5Zs-0007Ly-BF; Mon, 08 Nov 2021 14:24:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bp@alien8.de>) id 1mk5Zr-0007Ls-3B
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oQBbYlaqexu4t08cRZdDH3XaT2khXLTGUfDdhXY+o6w=; b=SMbAjEMIZbEASGDPyi3o/n1DN6
 BLdKzAZNZa4eg8YRwmTBkmp1VJ87Jsuxh3+tZKcixbgkyWjZ39/i0TAnvbkahA/aQG+lI4CmyC28u
 wBiNAv91jOAb0KxWajs0vwZm98tlRw0PW7WpS+4roizbnEnmMGv8iw+qNpWn/OBvbwlU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oQBbYlaqexu4t08cRZdDH3XaT2khXLTGUfDdhXY+o6w=; b=CnfnR1JWn4S3m1D80dJi0cPedg
 QJhdqcr1cEWZTBcU57rAt3OF/iQ9cGOHlAwMM83t7eHvIP3R5R1+aHfUxtR7D7UPsMXqM5rmQIofb
 E3X2p08ZynFl0Y2S+yC90nXIy9FN4sYFQtGD2Y3Q8C1cH42a/Tef1wCFedDA0LxoGxXY=;
Received: from mail.skyhub.de ([5.9.137.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mk5Zn-0069lH-D9
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:24:51 +0000
Received: from zn.tnic (p200300ec2f33110093973d8dfcf40fd9.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f33:1100:9397:3d8d:fcf4:fd9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D54F61EC04EE;
 Mon,  8 Nov 2021 15:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1636381481;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=oQBbYlaqexu4t08cRZdDH3XaT2khXLTGUfDdhXY+o6w=;
 b=BzFVBEJotdv+x1wk5r7BVthkB7IfDjFkcs3Qa23VnQgw6n7GoUvAnfTwnsI1XwsFUQ2pfc
 wTEtmUg2zpiIKZgiV8GtlPXLXcMCnwwX7vbzvuM7Jd46qSvtVDp/eqlUHv6UrUSSdUIxSB
 fTiz2Hj9eXxtQyoPpRyOqBuxOD7Awrk=
Date: Mon, 8 Nov 2021 15:24:39 +0100
From: Borislav Petkov <bp@alien8.de>
To: Alan Stern <stern@rowland.harvard.edu>
Message-ID: <YYkzJ3+faVga2Tl3@zn.tnic>
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101924.15759-1-bp@alien8.de>
 <20211108141703.GB1666297@rowland.harvard.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211108141703.GB1666297@rowland.harvard.edu>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 08, 2021 at 09:17:03AM -0500, Alan Stern wrote:
 > What reason is there for moving the check into the callers? It seems >
 like pointless churn. Why not add the error return code, change the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mk5Zn-0069lH-D9
Subject: Re: [Openipmi-developer] [PATCH v0 00/42] notifiers: Return an
 error when callback is already registered
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
Cc: alsa-devel@alsa-project.org, x86@kernel.org, linux-sh@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-mips@vger.kernel.org,
 netdev@vger.kernel.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 sparclinux@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, Rohit Maheshwari <rohitm@chelsio.com>,
 linux-staging@lists.linux.dev, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 linux-um@lists.infradead.org, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, intel-gvt-dev@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 linux-parisc@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-alpha@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 08, 2021 at 09:17:03AM -0500, Alan Stern wrote:
> What reason is there for moving the check into the callers?  It seems 
> like pointless churn.  Why not add the error return code, change the 
> WARN to pr_warn, and leave the callers as they are?  Wouldn't that end 
> up having exactly the same effect?
> 
> For that matter, what sort of remedial action can a caller take if the 
> return code is -EEXIST?  Is there any point in forcing callers to check 
> the return code if they can't do anything about it?

See my reply to Geert from just now:

https://lore.kernel.org/r/YYkyUEqcsOwQMb1S@zn.tnic

I guess I can add another indirection to notifier_chain_register() and
avoid touching all the call sites.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
