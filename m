Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7012AF6C5
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 Nov 2020 17:42:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kctCn-0007gQ-Bv; Wed, 11 Nov 2020 16:42:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kctCl-0007fj-Qk
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Nov 2020 16:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CdmQLCwtYnJ5737miMX6EDzo04FbVACXjJLBV8q9mKA=; b=OgClksYMhv6HAuKPNo9PZtw+qz
 91i3jWV/R5Bm16AD0dKGpPUrhXdZx9UirZ2Gp+Zb0ei36MI5CZtsjIpUfa98LB4/6m7axb3J+O77J
 4/mk42JQuZGZiU5l8RCLewI7wuN8mCwJeRG5wwG5ThQem0OdrviEZeHksaKveP3jRVmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CdmQLCwtYnJ5737miMX6EDzo04FbVACXjJLBV8q9mKA=; b=B69C7JAR5mNgN2sL16eIFmvQXG
 1M8NL4cDPFyDEA3d4SuOetN3YxaaO3dDFtJwk92nPDy38KQhP6YAhJ9BV4g9lVZVPiqPnL8Rucdv2
 cusPiFEfNJTzMwNipFxFNnkA7LMWhm5nunazypHXL0X60yMnJrZdfHDHLDpMI61m9/UY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kctCR-00H1qI-DJ
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Nov 2020 16:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CdmQLCwtYnJ5737miMX6EDzo04FbVACXjJLBV8q9mKA=; b=Km1fuPPHydJXaMwRTIxnTPT7pO
 pBU+59/VZfX5+xusAShQ4joPY0E+weOOpsFrbpcjoBXqybcfQCo20iR0qOx84e37PHNvivcx13mhg
 kZLfAEDCCsFHPMVKhaaLWI3JbuPdA79ERGR5z5Y2JKW84K+BdzUVao/f5nFSFvG/8T23p26PAd1+8
 Sc9oTLXb56vCknvvtNf6xsfcfjwrBZOhFIaVp7SSel7dlQDtw+Cb8e9qg4OKMbVxzPdyfuHM3Ab+B
 FZSEmkPx0JPBQacjL5Z+Y4ZGf8Wkmwuio1lE5oZpUmXji4lB70vEynRHF5/EMdIwopzpaxPOx93A9
 r93p8KYg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kctBx-00026P-W3; Wed, 11 Nov 2020 16:41:54 +0000
Date: Wed, 11 Nov 2020 16:41:53 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20201111164153.GV17076@casper.infradead.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
 <20201111043304.GS17076@casper.infradead.org>
 <e84de5d0-f2b2-5481-eb8e-47370d632c4d@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e84de5d0-f2b2-5481-eb8e-47370d632c4d@linuxfoundation.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1kctCR-00H1qI-DJ
Subject: Re: [Openipmi-developer] [PATCH 00/13] Introduce seqnum_ops
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
Cc: rafael@kernel.org, peterz@infradead.org, valentina.manea.m@gmail.com,
 zohar@linux.ibm.com, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 arnd@arndb.de, corbet@lwn.net, linux-doc@vger.kernel.org, jmorris@namei.org,
 linux-acpi@vger.kernel.org, serge@hallyn.com, keescook@chromium.org,
 minyard@acm.org, bp@alien8.de, openipmi-developer@lists.sourceforge.net,
 mchehab@kernel.org, linux-edac@vger.kernel.org, tony.luck@intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, dmitry.kasatkin@gmail.com,
 linux-integrity@vger.kernel.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 11, 2020 at 09:03:20AM -0700, Shuah Khan wrote:
> On 11/10/20 9:33 PM, Matthew Wilcox wrote:
> > On Tue, Nov 10, 2020 at 12:53:26PM -0700, Shuah Khan wrote:
> > > There are a number of atomic_t usages in the kernel where atomic_t api
> > > is used strictly for counting sequence numbers and other statistical
> > > counters and not for managing object lifetime.
> > 
> > We already have something in Linux called a sequence counter, and it's
> > different from this.  ID counter?  instance number?  monotonic_t?  stat_t?
> > 
> 
> No results for monotonic_t or stat_t. Can you give me a pointer to what
> your referring to.

We have a seqcount_t.  We need to call this something different.
maybe we should call it stat_t (and for that usage, stat_add() as well
as stat_inc() is a legitimate API to have).


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
