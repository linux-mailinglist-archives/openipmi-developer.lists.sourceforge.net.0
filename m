Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 571CA7E1776
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Nov 2023 23:54:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzm0h-0004gS-1e;
	Sun, 05 Nov 2023 22:54:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzm0f-0004gK-FU
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:54:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uvcG7XUq7kcchLFjTcoSzVGDORe43gAmB+aXl1uvM7c=; b=VJ2jExmyUmjDCSfPOKGg/q5G4r
 P0SGZ15wqiIQJ2LGWjzn2Nw95Z28iWkRtTIlBUaN4e6GUYyOAeDgR6nkpP4EMHdCrzIrGWa8MtenD
 SNI36S77Bt81AB0O+PAup0lmv86vIIwMS2TPkWfg5MtYGvr9gQMQ/uJcrjvZW6SVt55I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uvcG7XUq7kcchLFjTcoSzVGDORe43gAmB+aXl1uvM7c=; b=hsp0A1zhj36ISeNBbR6Cw7ElYn
 PUnnbRUPp4oE9Qxc1Wc6at76tsXgvJ+7IgWNdNQyuayblCySnG7Dsc0zL7ZpzXcpRwRs8ynb28+d0
 X4x7yvGlLQu+6Bz6s25RN0WaKONQGQdMbo5EUpPB3/y2b16v5kMmu5o7pgS1vhy1w7Ak=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzm0d-0004U7-SJ for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:54:24 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 35BAC20075;
 Mon,  6 Nov 2023 06:54:10 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699224856;
 bh=uvcG7XUq7kcchLFjTcoSzVGDORe43gAmB+aXl1uvM7c=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=C0JxkAnoN6Bx7JDe8KHAqObKbg+REKWdBJdEDZp2b1kOz4KcE8y0xl1pDZOe8keP2
 NX4UuhhYpiKrv+WuMk+9YiXTn9UJ/yzNjiO8rDBubJyLymOmen14lWu7Vbr9kbkPbr
 x+4cpFEzX1d9Y+JvfKHQDHWTpxPEZYnPvYZ6Oj7aG3Lrrk1JWsKCJkP8EnKYOBsoLP
 BqeA08DGq+0vJugUfjqHUsVVGyDCWBLDBqt3D/bqe6Wue2WAGg6gXlxkWGwns3OL4k
 mLPs3qDBmdJNnT3qxuRjzzRZEypBF1lpQIr36MRvU0JIWPPSy8NEK3QGwZUZdUiNtJ
 1tG8Vb9SBhOyA==
Message-ID: <61daa1c69836caffd63e3c2d9bb2e62298f1a04a.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 09:24:10 +1030
In-Reply-To: <20231103144311.000008f1@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-5-andrew@codeconstruct.com.au>
 <20231103144311.000008f1@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 14:43 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:16 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > Don't pretend there's a valid failure path wh [...] 
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
X-Headers-End: 1qzm0d-0004U7-SJ
Subject: Re: [Openipmi-developer] [PATCH 04/10] ipmi: kcs_bmc: Make
 remove_device() callback return void
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

On Fri, 2023-11-03 at 14:43 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:16 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > Don't pretend there's a valid failure path when there's not.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> 
> Whilst I agree returning an error code is pointless, it is perhaps
> useful to make sure there is a dev_err() or similar in the paths
> now that you've remove the one at the call site.
> 
> Minor point and up to you if you want to or not.

No, that's reasonable. I'll address this in v2.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
