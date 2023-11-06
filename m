Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C727E1815
	for <lists+openipmi-developer@lfdr.de>; Mon,  6 Nov 2023 01:05:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzn7F-0007vg-Aq;
	Mon, 06 Nov 2023 00:05:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzn7D-0007va-Ql
 for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Nov 2023 00:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EWNKlHcvgb9LcHwcwUv91j9u/g4apLHIrE6bm+kVLT4=; b=e1rYJNdKU5Rm0r0l/D9kthA+2d
 9jALjLJP8JE6DPjZCQmegn0NPMrme8FGMESXllx81pY0f/v2ojKCbqUg+EFNRtFR9Y+sUwv5gRNXj
 E4Mc2mdEt5a5EyvZFABBaukLRMXOhHlagbtSHLV3TCAVqrltVQe2Cl6nwFloNSopBB5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EWNKlHcvgb9LcHwcwUv91j9u/g4apLHIrE6bm+kVLT4=; b=kL16JL/UWWK/cxX1SUHhCC1TC3
 SKiRHawBPlycJ5Q7MWvpu4mmut4wnJ6miOT4bFQarMngbDiqI+YVfvTCU2ZKE9VkdaBghZDx/kpvj
 QSNf7m8bYnBggsdi6XgLTCd76mNDJeIhAMdjBb+mT82qwf3MpWCnTfVPIyWCmWWADdAY=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzn7B-00HU4O-HI for openipmi-developer@lists.sourceforge.net;
 Mon, 06 Nov 2023 00:05:14 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id C790720075;
 Mon,  6 Nov 2023 08:05:05 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699229106;
 bh=EWNKlHcvgb9LcHwcwUv91j9u/g4apLHIrE6bm+kVLT4=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=QxNSspXy6OvxaY2pnJ5AXiRhVTgGzKUwY3toq0p7MdZtRTm23gQsAmqDWfVXPWB3i
 evFLqRuGMjELjpu/q4sm5RzU3uMXAlnExK9RuJMJZK66brHZCoItju4dR9jAOOfDNg
 /3XvdZEGhbXlDfLBMCk8/DlUprPzR1TiIddndbGLs1IUHgGm49l6h9lV+1cDSFFHgp
 T4cY0Dzm/PwnYaIHmf+PwUzlfqOZTg7x/igR+pvsOArjEi6B4KY1Or/wIIcsjsU8Bj
 pgI09V1Lvon1d87g1orGpQx3tokCeXI4IAWTg2GjU2ZHnJ5QI2Z11ijQ+Dr/azxLBs
 FDSR2c47Z8P5w==
Message-ID: <25b2f045e39fc40862c88d4af7081e4bbc0e3c92.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 10:35:05 +1030
In-Reply-To: <20231103151230.0000161e@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-11-andrew@codeconstruct.com.au>
 <20231103151230.0000161e@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 15:12 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:22 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > Provide kerneldoc describing the relationship [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qzn7B-00HU4O-HI
Subject: Re: [Openipmi-developer] [PATCH 10/10] ipmi: kcs_bmc: Add subsystem
 kerneldoc
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
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, 2023-11-03 at 15:12 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:22 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > Provide kerneldoc describing the relationships between and the
> > behaviours of the structures and functions of the KCS subsystem.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> Seems reasonable but I've only a superficial idea of how this all fits
> together so no tag from me.

Thanks for the reviews so far!

> 
> There is the fun question of whether function documentation should be
> next to the implementation or in the header.  As long as it's
> consistent in a given subsystem I don't personally thing it matters
> that much.

Happy to put it where people prefer. I like the consistency of having
it all in the one spot, but I appreciate the idea that it might be
easier to maintain alongside the implementation.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
