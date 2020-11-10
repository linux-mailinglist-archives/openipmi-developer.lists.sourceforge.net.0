Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A16EA2AF354
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 Nov 2020 15:16:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kcqvA-0007BF-HM; Wed, 11 Nov 2020 14:16:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stern+5faeb4f6@netrider.rowland.org>)
 id 1kcav0-0002qf-Nl
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 21:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZmT/k3Vr/xZYB0nCFtrMxw/gg/wNfYJu2bVgyQ7OnLs=; b=fXNWG+YT5UsQFeVj3DkpLvhUYk
 UNKJaDACI13CvSLbWLWMSc8Yk+isaNKTuXL1oC6UEpV4kKHncMHEBOBYcUB8NOsuaUSN/MKpp7Bhl
 WxI8Va+dFphEiXc6uJMJQvV3WLJunGm3wCcGvjBTIc+bV14KbPjZt1Q0lwilNhv5eZqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZmT/k3Vr/xZYB0nCFtrMxw/gg/wNfYJu2bVgyQ7OnLs=; b=BCIiksSTLr4GCstPzKXsx6pEvG
 3PNY+Z00cGurt1nvfk4sTvXbigyB4dcTk+dp4VFEwO9nv1L0oyGD0w9sab65t/wLY/Xk9crJjbPcZ
 il8TMutH5HunrPf3VrqlurqRtSy8rK/ftcVdnidQop7qhKVhPbNPkexk+sEVqJeq20b0=;
Received: from netrider.rowland.org ([192.131.102.5])
 by sfi-mx-3.v28.lw.sourceforge.com with smtp (Exim 4.92.2)
 id 1kcauq-007B5g-Lv
 for openipmi-developer@lists.sourceforge.net; Tue, 10 Nov 2020 21:11:10 +0000
Received: (qmail 205608 invoked by uid 1000); 10 Nov 2020 15:44:14 -0500
Date: Tue, 10 Nov 2020 15:44:14 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20201110204414.GA204624@rowland.harvard.edu>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1605027593.git.skhan@linuxfoundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1kcauq-007B5g-Lv
X-Mailman-Approved-At: Wed, 11 Nov 2020 14:16:22 +0000
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

On Tue, Nov 10, 2020 at 12:53:26PM -0700, Shuah Khan wrote:
> There are a number of atomic_t usages in the kernel where atomic_t api
> is used strictly for counting sequence numbers and other statistical
> counters and not for managing object lifetime.
> 
> The purpose of these Sequence Number Ops is to clearly differentiate
> atomic_t counter usages from atomic_t usages that guard object lifetimes,
> hence prone to overflow and underflow errors.
> 
> The atomic_t api provides a wide range of atomic operations as a base
> api to implement atomic counters, bitops, spinlock interfaces. The usages
> also evolved into being used for resource lifetimes and state management.
> The refcount_t api was introduced to address resource lifetime problems
> related to atomic_t wrapping. There is a large overlap between the
> atomic_t api used for resource lifetimes and just counters, stats, and
> sequence numbers. It has become difficult to differentiate between the
> atomic_t usages that should be converted to refcount_t and the ones that
> can be left alone. Introducing seqnum_ops to wrap the usages that are
> stats, counters, sequence numbers makes it easier for tools that scan
> for underflow and overflow on atomic_t usages to detect overflow and
> underflows to scan just the cases that are prone to errors.
> 
> Sequence Number api provides interfaces for simple atomic_t counter usages
> that just count, and don't guard resource lifetimes. The seqnum_ops are
> built on top of atomic_t api, providing a smaller subset of atomic_t
> interfaces necessary to support atomic_t usages as simple counters.
> This api has init/set/inc/dec/read and doesn't support any other atomic_t
> ops with the intent to restrict the use of these interfaces as simple
> counting usages.
> 
> Sequence Numbers wrap around to INT_MIN when it overflows and should not
> be used to guard resource lifetimes, device usage and open counts that
> control state changes, and pm states. Overflowing to INT_MIN is consistent
> with the atomic_t api, which it is built on top of.

If Sequence Numbers are subject to wraparound then they aren't reliable.  
Given that they aren't reliable, why use atomic instructions at all?  
Why not just use plain regular integers with READ_ONCE and WRITE_ONCE?

Alan Stern


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
