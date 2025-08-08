Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 010A8B1E06C
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 04:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hRs1+IEtVbS3Qn9v8/jWyNMvDn85JoavJg5xptg06Zs=; b=ECGeejyqt5OkCVAs92favt8y9X
	xHBvkRUAQWuko6Od4ZT+b3qQNpnRqRTpWKgRHqKJR0aInBY5gbF8CpJKZiUxQJ5L2I4gM6yR4OVfh
	3EiGJNq5Ld6HKZAmnOwd2wmMulRTmugww1gZ/13H1p+VRZDpEliw8OB/hQiwXMyjO5RI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ukCUu-0000xP-Pj;
	Fri, 08 Aug 2025 02:06:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1ukCUt-0000xJ-4r
 for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 02:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=THXhfIs9H9rrYB2vrX4MQGnujXZkNVq7DEecFH0R2bc=; b=g5jsN87L3OOwhViwdTsl1lDYtR
 Rq32t7GZA7rZZ5zhs83xZb4zmSAPn5tCQ9p0ytei8FBkTjywg20fQaOil7732r8spWMbWEdzBH8JB
 o5k9V1bequhcs+VH5v53geOHkgyihUR3nUeDG6glPwlt6YesADWdtXyuh9xNwe03QRak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=THXhfIs9H9rrYB2vrX4MQGnujXZkNVq7DEecFH0R2bc=; b=jyMirk9NTzSJxA9NKh12vM5jAo
 yhBKyf9kDWp9sG0/CA6WeRjezkWfnq+hbCAC8PnJEs2FZMD6goruV+YRpdeTG8Gxf5pZnnoK8pxoq
 60GXdDlO1LQgNQnx+BbuvmWyzgIR3cVGHhH+9cclLR28C4KLYE3RcbYpmbM6b8xO82dE=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ukCUs-0008Mr-7s for openipmi-developer@lists.sourceforge.net;
 Fri, 08 Aug 2025 02:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1754617651;
 bh=THXhfIs9H9rrYB2vrX4MQGnujXZkNVq7DEecFH0R2bc=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=CWTs9ETKMKNU5vACd1Li7sftjh7SfZF8+G16VrXkmjc2puUADe9n2XkBxAMsc+Gmj
 k6zsMKq0tD8KbbkjMsEnmSPAkW+tZAnVXNqS4CO4Bw3ntAm+opgbp7rM9beeaSdGnP
 PoyoGO217ooYZ+MLJaR4hpYCi+fnb0O7GRs8a6BrdVy26kY9QiiWkHaSH1MPMXSVQO
 EC2kaVA9ebD24Y1va02psaU2Kkxmh+bW5p131xgNLrNS2MDCpTrfHIBpYde+lSn1YR
 9F8fDY9MH0b/NsZTQpzL6gIBOu1GHFJOhGRlrQbqTu2fV+K8qXAY+oj8KfTgdKGRdo
 3mpYkp4ktMi9A==
Received: from [192.168.68.112] (unknown [180.150.112.70])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 4991E6AF39;
 Fri,  8 Aug 2025 09:47:30 +0800 (AWST)
Message-ID: <a14b98078554e27453fc1f96a667b299a15fd4c2.camel@codeconstruct.com.au>
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "Rob Herring (Arm)" <robh@kernel.org>, Corey Minyard
 <corey@minyard.net>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Date: Fri, 08 Aug 2025 11:17:29 +0930
In-Reply-To: <20250807132852.3291305-1-robh@kernel.org>
References: <20250807132852.3291305-1-robh@kernel.org>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2025-08-07 at 08:28 -0500, Rob Herring (Arm) wrote:
 > The ASpeed kcs-bmc nodes have a "clocks" property which isn't > documented.
 It looks like all the LPC child devices have the same clock > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ukCUs-0008Mr-7s
Subject: Re: [Openipmi-developer] [PATCH] dt-bindings: ipmi: aspeed,
 ast2400-kcs-bmc: Add missing "clocks" property
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 2025-08-07 at 08:28 -0500, Rob Herring (Arm) wrote:
> The ASpeed kcs-bmc nodes have a "clocks" property which isn't
> documented. It looks like all the LPC child devices have the same clock
> source and some of the drivers manage their clock. Perhaps it is the
> parent device that should have the clock, but it's too late for that.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Thanks Rob.

Acked-by: Andrew Jeffery <andrew@codeconstruct.com.au>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
