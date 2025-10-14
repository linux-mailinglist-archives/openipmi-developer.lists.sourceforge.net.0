Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5A3BDB9C7
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Oct 2025 00:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OJ7D9uwYSqWOLzdIUQeuPSUHtaCxq7BBhH3jhCOXolI=; b=mqMSYbD8BpctIsPM7jEfmEtiMx
	Fxbb9jwBIeVE7e1btXgFBBoh1cof+VPkkOznFh0zezNzgjrbPWRoZwEEc2JEjXq+4G6U0W8cpNl/x
	YTIm6S6/CpJhdNBhuIwKbF6i7oUFZSm4Scj1D/QZ9IYlxAPOIis8BPLiPOA6sg5JCWtE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v8nNw-0000pb-FS;
	Tue, 14 Oct 2025 22:20:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1v8nNq-0000pP-BO
 for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 22:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3ib1iU3Qxw19Ut1WEzRnfFFufKNvW6qoaUWizLUq11Q=; b=SAusYzySctE1BYiIZ4uBn0xMwH
 8SQiGlAr99pEu1rukdOw5QkhDxy93BoqyZsN5zkgga2CVUQjfFg1VSCed5oVljHeZIBBLPUntEGq9
 y9BCszpwoyXRkivMbA+gFg5xPXcKkKyZfc0ON7oeDty0/ggAuAfjVlkXwG2h66TFv0do=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3ib1iU3Qxw19Ut1WEzRnfFFufKNvW6qoaUWizLUq11Q=; b=UItFzjtfKEMLqJLc0vldTf3Q1p
 Gu/5HK1WXXLr1m7CQTCix5VN6NeAz55YuluBzM+Aw/BWEoM/EDvOGEDt4uTdsbLj50BWo5FWWP/fu
 S/+ZJpwniIKB13uCgU69Hq7kQMVD9McGVL6A8lNJoXAleV4aGOWgT26ruSTdYCPA0658=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8nNn-0007mz-Ti for openipmi-developer@lists.sourceforge.net;
 Tue, 14 Oct 2025 22:20:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1760479451;
 bh=3ib1iU3Qxw19Ut1WEzRnfFFufKNvW6qoaUWizLUq11Q=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=RFfXKzkLQtwUueDyCrkSuazpG44SGbxqEHdEVqA6yRD7EsZxBZcdlMsE+zAhISIeA
 2pxWVSQWI3POKOY1yaS+c0Zmq0hVWF0BVwVLUcSKkuOjxEo4du64sz0+3f8eqc8ppV
 9AFbkGKLp8TAGcRnlg29Nb57Ax2cf4tly1tUNCp6wHzoTby0gn4Zc5FM/9vfsm7t1l
 za6awf81wSsV/ZXamUjdMf98iKiPeYBa1IdjJn5R+9qgvbk0a4e15gdnLjv+wr8NEP
 BrwCGW/HlU/YsqccXVvyIqWJGK/d6eOLB3gkZ+g9cXYT/o+uTQNdCQAnSpo6UrGbI1
 0uj+NvXVHyfuA==
Received: from [192.168.68.113] (unknown [180.150.112.213])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 974387699E;
 Wed, 15 Oct 2025 06:04:09 +0800 (AWST)
Message-ID: <b387257937922d62fbf6bf6377470cfa8a46da2f.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "Rob Herring (Arm)" <robh@kernel.org>, Corey Minyard
 <corey@minyard.net>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Date: Wed, 15 Oct 2025 08:34:05 +1030
In-Reply-To: <20251014152948.3782738-1-robh@kernel.org>
References: <20251014152948.3782738-1-robh@kernel.org>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2025-10-14 at 10:29 -0500, Rob Herring (Arm) wrote:
 > Convert the aspeed,ast2400-ibt-bmc binding to DT schema format. It's a
 > straight-forward conversion. > > Signed-off-by: Rob Herring (Arm) [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v8nNn-0007mz-Ti
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: Convert aspeed,
 ast2400-ibt-bmc to DT schema
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
Cc: devicetree@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2025-10-14 at 10:29 -0500, Rob Herring (Arm) wrote:
> Convert the aspeed,ast2400-ibt-bmc binding to DT schema format. It's a
> straight-forward conversion.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au>

Thanks Rob.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
