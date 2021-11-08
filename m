Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9121B448204
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Nov 2021 15:43:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mk5sH-00085b-Dg; Mon, 08 Nov 2021 14:43:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <stern+618c59fc@netrider.rowland.org>)
 id 1mk5sF-00085V-EM
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:43:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N4CcAW4IYDlt9Ys75STv2a1+IBOc55a41UwZTe++iLw=; b=AMNpp1cNbEUOk+NSYCKbDpMCId
 6ELl2PJtzDthIWiOD66S4koGqIqE5Q2x6Ar/C3EWRGxhWY/dXRF6P+kqcbIPKHTj2w6721tVIhbZm
 fv+exuEPP02jtLTF/ajn4CYUSA6T/Knalz2+QBq8eTO+j7j92AZYzjgaF8ylqAJPzKzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N4CcAW4IYDlt9Ys75STv2a1+IBOc55a41UwZTe++iLw=; b=RX6bbRkf+Z/uhmBPCIWpdwwKjl
 PA5Txa993VMZd1dKXJCBvioZC4cQ5wymYPRvrFEmDWFd46LtH9ooFrgfE9YSCe1Pc6fc7fX/9pGqY
 nFacWMxYQ+ATpQguxu1/vB3Xex5CMXw0SucNvkLxUyjtvk5mFIuxNHRYcC9CCFdALBhs=;
Received: from netrider.rowland.org ([192.131.102.5])
 by sfi-mx-1.v28.lw.sourceforge.com with smtp (Exim 4.92.3)
 id 1mk5sE-006Ary-AH
 for openipmi-developer@lists.sourceforge.net; Mon, 08 Nov 2021 14:43:51 +0000
Received: (qmail 1667203 invoked by uid 1000); 8 Nov 2021 09:17:03 -0500
Date: Mon, 8 Nov 2021 09:17:03 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Borislav Petkov <bp@alien8.de>
Message-ID: <20211108141703.GB1666297@rowland.harvard.edu>
References: <20211108101157.15189-1-bp@alien8.de>
 <20211108101924.15759-1-bp@alien8.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211108101924.15759-1-bp@alien8.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 08, 2021 at 11:19:24AM +0100, Borislav Petkov
 wrote: > From: Borislav Petkov <bp@suse.de> > > Hi all, > > this is a huge
 patchset for something which is really trivial - it > changes the n [...]
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-Headers-End: 1mk5sE-006Ary-AH
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

On Mon, Nov 08, 2021 at 11:19:24AM +0100, Borislav Petkov wrote:
> From: Borislav Petkov <bp@suse.de>
> 
> Hi all,
> 
> this is a huge patchset for something which is really trivial - it
> changes the notifier registration routines to return an error value
> if a notifier callback is already present on the respective list of
> callbacks. For more details scroll to the last patch.
> 
> Everything before it is converting the callers to check the return value
> of the registration routines and issue a warning, instead of the WARN()
> notifier_chain_register() does now.

What reason is there for moving the check into the callers?  It seems 
like pointless churn.  Why not add the error return code, change the 
WARN to pr_warn, and leave the callers as they are?  Wouldn't that end 
up having exactly the same effect?

For that matter, what sort of remedial action can a caller take if the 
return code is -EEXIST?  Is there any point in forcing callers to check 
the return code if they can't do anything about it?

> Before the last patch has been applied, though, that checking is a
> NOP which would make the application of those patches trivial - every
> maintainer can pick a patch at her/his discretion - only the last one
> enables the build warnings and that one will be queued only after the
> preceding patches have all been merged so that there are no build
> warnings.

Why should there be _any_ build warnings?  The real problem occurs when 
a notifier callback is added twice, not when a caller fails to check the 
return code.  Double-registration is not the sort of thing that can be 
detected at build time.

Alan Stern

> Due to the sheer volume of the patches, I have addressed the respective
> patch and the last one, which enables the warning, with addressees for
> each maintained area so as not to spam people unnecessarily.
> 
> If people prefer I carry some through tip, instead, I'll gladly do so -
> your call.
> 
> And, if you think the warning messages need to be more precise, feel
> free to adjust them before committing.
> 
> Thanks!


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
