Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6D77E176A
	for <lists+openipmi-developer@lfdr.de>; Sun,  5 Nov 2023 23:47:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qzluI-0006yt-Kb;
	Sun, 05 Nov 2023 22:47:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qzluG-0006yn-US
 for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:47:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1TOTltR3bb+XNIcf27UXTOFQ8YANP5VzWaRS1UXoM6Y=; b=akJhyT4+JoCAw3SxTn94cz8DjZ
 CgHWzH3siA7L6AQ+xDSbZNX54O52mJ8Y4bckkM3p98q6rKw0QjDRtaezsfRuSGmM/JleKow2c3eNE
 uIUadNP02Os285fno6ErrZzAtQcqrBwqgAp09RvGFPnrlmbml4+uu+uSih0XSS0Ck8iQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1TOTltR3bb+XNIcf27UXTOFQ8YANP5VzWaRS1UXoM6Y=; b=SD/t0aPOksjaP8SipbcFIxdWNO
 Z6zDuj7mRxDJcfC0107A3RL8Np4ITAD0z07CKnPkhHAA70dL2AqGQzC1w1kTgu9Gdc1s2e804a4F9
 WeIHG+N3lYBK7s97VvolaIKwMDvK7dE4bj46/p7epXahUBu859JNDsOIl+Qv8c95wbnU=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qzluD-0002gR-Cd for openipmi-developer@lists.sourceforge.net;
 Sun, 05 Nov 2023 22:47:47 +0000
Received: from [192.168.68.112]
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B6F3620075;
 Mon,  6 Nov 2023 06:47:27 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1699224448;
 bh=1TOTltR3bb+XNIcf27UXTOFQ8YANP5VzWaRS1UXoM6Y=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=iSTSeyawJ3UzDutlcUbEk3WiscArwc1m6oIpSlJyo4d7gzXgnvaIOBhgAfpqzCEzt
 ev7V7Jufa5EFTReWvdFoUcM7/Q+KaCKd0mJq0zadqwjYxDufl8JnJpLcxpuzC8PSx3
 U45Abq69F/CWosT5gWYCRQV6DaNJx/1/ykmt39guPj+map1AQTV001RZ+SJaKgXV2s
 t/kP/HMV9u1K0PYKXXSImIeXP8LtUQ1B365HL0Fhwue+ipCWbS9+cr1xmhAN1Yx3UW
 IsT4NPVrdnpmBOhkjnyJi5k4lA2+mc72WgsDuz8fM+i+6VBPXHcAL1nWYt0a9OV3ON
 h5wkiYTzyl43g==
Message-ID: <d1ab4c5b175099fc204909e5430c87fb55565e56.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Date: Mon, 06 Nov 2023 09:17:26 +1030
In-Reply-To: <20231103143657.0000046f@Huawei.com>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-3-andrew@codeconstruct.com.au>
 <20231103143657.0000046f@Huawei.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, 2023-11-03 at 14:36 +0000, Jonathan Cameron wrote:
 > On Fri,
 3 Nov 2023 16:45:14 +1030 > Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > > > struct kcs_bmc_device defines a spinlock memb [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qzluD-0002gR-Cd
Subject: Re: [Openipmi-developer] [PATCH 02/10] ipmi: kcs_bmc: Include
 spinlock.h
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

On Fri, 2023-11-03 at 14:36 +0000, Jonathan Cameron wrote:
> On Fri,  3 Nov 2023 16:45:14 +1030
> Andrew Jeffery <andrew@codeconstruct.com.au> wrote:
> 
> > struct kcs_bmc_device defines a spinlock member but the header in which
> > it is defined failed to include the spinlock header. In the spirit of
> > include-what-you-use, do what's necessary.
> > 
> > Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> This is fine, but whilst checking it I noticed there is no
> forwards def of struct device or appropriate include.

Ah, I'll fix that too.

clangd automatically added the spinlock include at one point and so I
figured I'd capture it.

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
