Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA82AE773
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 Nov 2020 05:33:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kchpR-0006Hz-Fe; Wed, 11 Nov 2020 04:33:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kchpO-0006Hc-UK
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Nov 2020 04:33:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gL0OocahXZn8ZQNF8szmGW51uY79EBzlZ34GhrWeBso=; b=LYwa9rNuduAwBqFCA0SZFIaqC0
 RFtPvVPnlE+xZJ62Na76ASlgRpWg18agxW3uiz4bfGxv3TsYKY0lo5iL1W7LvtC0OKM5Pwsiz8zc1
 vLpFn0jh3vpXbkS5URyjefr5TvlsMGm9kRa0lyA3yVf4QUSJTCy8+RnBRpyzm+gMFIbw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gL0OocahXZn8ZQNF8szmGW51uY79EBzlZ34GhrWeBso=; b=aI08yA+dJiL6IOsIACJNDiXnwC
 nfXJ8Ix4DEVfy/zlZSpjyKdkzgTSjjnM+CxMTtWub5aIEkyV7dzrmc9+6t94hCS6i3epg9RMVBxd7
 OA3Ht3u9Xj/Xtx1w/o2E7M8o8MXEgJStM1jZ8sW7pGKdHeU/OVZDiWoO8aGWRciR9Lz4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kchpH-00GKlJ-Vr
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Nov 2020 04:33:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gL0OocahXZn8ZQNF8szmGW51uY79EBzlZ34GhrWeBso=; b=oDeBdofTe937SyWQ5KS04zcvqC
 lgvZ1G91Fpn0+Q6hWzn8iz4pOCTvXSHpD6P1QhX5Qd04Kt1Qw+XpMngVvHfktQNVQ1ulA67YiL7nL
 tA8aihrql/H2AMkAyYWzWFIN9Ce0745Pa94PaKzEiQEtKHdWkthYtwOI+SQpKIJw6ptG47vbEq7Sm
 XbhcamxT5yKVkB0cRiWCzjhuX2LfopicPBECLbWzvfoBpL8c7A/pYE1TRlavFekqmDsyuYQ9Lmaqv
 TacYawpzSIaJXXew8hPtbksnGSLMeAoHskMPJw9V8IhREGECwGEFySLXGWxjJ//+BgXGebA+WR5kI
 gAImvbZw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kchoe-0002CB-P0; Wed, 11 Nov 2020 04:33:04 +0000
Date: Wed, 11 Nov 2020 04:33:04 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20201111043304.GS17076@casper.infradead.org>
References: <cover.1605027593.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1605027593.git.skhan@linuxfoundation.org>
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
X-Headers-End: 1kchpH-00GKlJ-Vr
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

We already have something in Linux called a sequence counter, and it's
different from this.  ID counter?  instance number?  monotonic_t?  stat_t?


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
