Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EABC7E1772
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Nov 2023 23:53:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzlzJ-0000hU-E2;
	Sun, 05 Nov 2023 22:53:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzlzH-0000hG-E9
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X05iy3X3/MBZ1pThUNQEQBQO2psGBo+DnUHTVaKJcec=; b=AYgGC3RUORhSWYDXqp57nHqEdS
 3Q2m0MNGwnGZtSXBrcWTOioyIGr6U8yqpqri298XwSb0cNFi2HeajcuTmMqRPQL3aFjpwWcTi4QaR
 U13y7Ig7k/OFyrMP+I+HEK+e+OGNVNsUt8u5WCevWpkUIJ9vi5MBLuQm7PAyhd1Ov5LA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X05iy3X3/MBZ1pThUNQEQBQO2psGBo+DnUHTVaKJcec=; b=C+UOVynAIDST4CxndcyIesNpJs
 OKRdu6YghEpCbLw68sMTHJ5VuJJE+WldisUwalmhoE7pNZPEm4YGRh4obwhMH7Xum6sI4qEBXH6wM
 BMW8/WzEwurdLVFbZFZLMWVj+CbkFRI4R+MrDcXrf+mKdFuBjykX7O6NgiIvdx5mHFyQ=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzlzG-00H9FH-Sx for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:53:00 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id E6AAB20075;
 Mon,  6 Nov 2023 06:52:44 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699224765;
 bh=X05iy3X3/MBZ1pThUNQEQBQO2psGBo+DnUHTVaKJcec=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=gkzrZaNisOb0fd1fDQJJgx8CudoOm1Mz4EzfImG/H0PXTQ7ecpNsdTl0s+sBrX39i
 5mUH1tzgt5Ch3PfDJsIm+YbxkQebRU/Ixf/jxsEjgx+9MmAlO3ryrdWNpGkWpG0e5b
 iEToo9YSuME7qRoL9G5hU9dnh4wIEJgkH1DRabR5BNpT+RVIfOmL3agkj+WE4Lm1F8
 oBhIjfPzDXeHnunbdWqNMa6G/oGAFPqRTGy6Lh+hk9xbNV9sAr0+ntIJup2R2wnHvM
 E9SLKNuXzT9e0b6+SDnr7GQEWEVLqQhzO48lhM7g5CNsFTZKrvjJ78RzWcRLVT4V0N
 Pt8BkK6T2E+pw==
Message-ID: <0b0bc38c2c76917e9a29e216d6ae7d265a919d07.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 09:22:44 +1030
In-Reply-To: <20231103144026.00001fbc@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-4-andrew@codeconstruct.com.au>
 <20231103144026.00001fbc@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 14:40 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:15 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > There were no users outside the subsystem cor [...] 
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
X-Headers-End: 1qzlzG-00H9FH-Sx
Subject: Re: [Openipmi-developer] [PATCH 03/10] ipmi: kcs_bmc: Make
 kcs_bmc_update_event_mask() static
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

On Fri, 2023-11-03 at 14:40 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:15 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > There were no users outside the subsystem core, so let's not expose it.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> Is it worth having the wrapper?

Perhaps not, though aesthetically I prefer it. Also the diff is at
least slightly smaller by not removing it entirely :)

> 
> I guess all the other cases do have wrappers (even if that's because
> they continue to be exported) so fair enough.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks,

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
