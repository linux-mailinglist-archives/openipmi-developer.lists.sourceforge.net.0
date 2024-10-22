Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8269A9913
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Oct 2024 07:59:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t37vj-00042N-OB;
	Tue, 22 Oct 2024 05:59:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <krzk@kernel.org>) id 1t37vi-00042G-Ur
 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 05:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=orjzYkOaxHhlZntT1rz1A+RZT3kfoOpaEkSa8LR/cv8=; b=REc5lqrdIWd/5lJdaQH24W9gTb
 YcndgLU+unYvjjjiyOSZcdh8VU3ugioKFDImC5VcYgNSotyqmThRzDYVLBvPyeVRg+LscdbGG7Rne
 io+E7sdaO8lTUFBVFJwM7KY4FbFL7d8BzBuU003DAY2+N7ZlGD7pQKNOzVBGY+J0dmos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=orjzYkOaxHhlZntT1rz1A+RZT3kfoOpaEkSa8LR/cv8=; b=icVI3Eoka49UXx5h1pKRRzYG6c
 QGJQcBE15/oy9ZWncr4LXNwX1u0aynoCDivo0cM/1dfjaZzk9nsih0fU+Zw3cbPsLvG2P2NthmWUh
 9POx7bChbD+Mm1rtfUCut1ihawCwTxK6OxnPIvRaQO+fInq4H/n+phZ4vCdfJ1JkkZB4=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t37vi-0008Jk-C6 for openipmi-developer@lists.sourceforge.net;
 Tue, 22 Oct 2024 05:59:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7517BA43E17;
 Tue, 22 Oct 2024 05:59:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E21CC4CEE3;
 Tue, 22 Oct 2024 05:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1729576771;
 bh=GpRMng1ccoi3f2cJb14oOODmsXi9QulBvFA355RktFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B49lRi/80kmhAo6BzIWQ9OOr3520QdvtqCIno27fkSn6UCcpWueav/ooDGYK7RGV6
 83GiSYPsq3FVonvFwkPMfF/mPz+NGL0ZcYJRTHFx3KEn0pEq3nClZoIl1focCCSwnG
 KrYOt0B5u4Wg5bd3d1VIIotDVA7uGluqL3Qd+j/TzjzNTKSa9a07KFG+202ujMt/7N
 pM7v/KaKu4297e31VrRcGzJdzUoklDK14voW6O3gCkUe8ZOimaX+OFDiORgQY8wfep
 UjIN+1ocEjg16FLk7WeRRfMIH0YPiBCr1kNV0STFeW8LBrzyh7Jt2EkJ3NVOAuROKC
 NHBhxc8Yp0AKg==
Date: Tue, 22 Oct 2024 07:59:27 +0200
To: Potin Lai <potin.lai.pt@gmail.com>
Message-ID: <yc5wngdgxh5ijixezdv6wyg4cqi7upcq5xtnrmwqt6e43nwaup@2asrssuj6bkm>
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
 <20241022-ssif-alert-gpios-v2-1-c7dd6dd17a7e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241022-ssif-alert-gpios-v2-1-c7dd6dd17a7e@gmail.com>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 22, 2024 at 09:20:46AM +0800, Potin Lai wrote:
 > Introduce the `alert-gpios` property to define an alert pin, enabling >
 the BMC to notify the host when a response is available. > > Signed [...]
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1t37vi-0008Jk-C6
Subject: Re: [Openipmi-developer] [PATCH v2 1/2] bindings: ipmi: Add alert
 GPIO enhancement for SSIF BMC driver
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
From: Krzysztof Kozlowski via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, devicetree@vger.kernel.org,
 Potin Lai <potin.lai@quantatw.com>, linux-kernel@vger.kernel.org,
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 22, 2024 at 09:20:46AM +0800, Potin Lai wrote:
> Introduce the `alert-gpios` property to define an alert pin, enabling
> the BMC to notify the host when a response is available.
> 
> Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
> ---
>  Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
