Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C0603A1AC85
	for <lists+openipmi-developer@lfdr.de>; Thu, 23 Jan 2025 23:12:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tb5Qx-0004qs-61;
	Thu, 23 Jan 2025 22:12:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <robh@kernel.org>) id 1tb5Qw-0004ql-32
 for openipmi-developer@lists.sourceforge.net;
 Thu, 23 Jan 2025 22:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LRPyClg3EsQbuPGoIm4DyxtDIXG2VDQIOtJhIA48rqk=; b=RMyk0Wv7H2srJPRFLBGG2BbD1K
 DHFFc5ZnKTtkiQcul6Z+ug/L+3VJcg3Yo1CMpP9svZTvdeBUCBkXAVyq+oNHZk71jpi0pQBgjXbsW
 o6T95WHNv3tOiAepKW7gMV+WC6tOrU8PJaOMqH643lonaQYGK09QKbwz7mly11pkeE6U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LRPyClg3EsQbuPGoIm4DyxtDIXG2VDQIOtJhIA48rqk=; b=c4cfQeECvH9Iwu3HV7J6fjYZUV
 HRU8Jegq3cGwGRqBsDuNIIfP1xjD6L5xPJ6Hn7VVT+FZnSmm+Yutu0RzVPpSanoTVaK4yG5UTorQi
 VpNR85jprCyU1mpqDMa+5c0RAzk75FTNdYjMv8q9te1EA8qDm239ZILeVm53bZkiDuGg=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tb5Qu-0007gZ-R3 for openipmi-developer@lists.sourceforge.net;
 Thu, 23 Jan 2025 22:12:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id C791EA40B1F;
 Thu, 23 Jan 2025 22:10:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D677C4CED3;
 Thu, 23 Jan 2025 22:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1737670330;
 bh=h5zYZEeh2fayA+qgYt1ROno/TFyCfT21k9zimU507Dk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pS0PydAP+A2YJMSiI8R5iPpvEnHyM7oUr40s3uHQxbFxq6iXZ498P+qYTBYL5FiG9
 98ffwKSrAFQvn9NDtjAD0K87PpxCpCsK6QXof+baFrDGreCApwkNQ2vmEuqNXQu+Kv
 t6pyoV7HiNuLnpxeSUQPHwzR9n4Af9dU6mCCXwY7HXLAbXf+0xDZZfq8IFEW797fuL
 Wvc5n0H8yOZaKN4VElcrUqH4XdlT2AfYnkHZYFINZC+3L3iS8PP6SfaN/r5TJWuik1
 wjpwY2Kn/I7M3bLekd2YYYhV8/+KYrxRXUJXBzyBldxEU0xqvYvokHfM/QoJLFgqRS
 VUARXO7KPHoWA==
Date: Thu, 23 Jan 2025 16:12:09 -0600
To: Ninad Palsule <ninad@linux.ibm.com>
Message-ID: <173767032899.448455.5833909744401276024.robh@kernel.org>
References: <20250116203527.2102742-1-ninad@linux.ibm.com>
 <20250116203527.2102742-3-ninad@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250116203527.2102742-3-ninad@linux.ibm.com>
X-Spam-Score: -5.5 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 16 Jan 2025 14:35:17 -0600, Ninad Palsule wrote: >
 Add device tree binding document for the IPMB device interface. > This device
 is already in use in both driver and .dts files. > > Signed-off [...] 
 Content analysis details:   (-5.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tb5Qu-0007gZ-R3
Subject: Re: [Openipmi-developer] [PATCH v6 02/10] bindings: ipmi: Add
 binding for IPMB device intf
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
From: "Rob Herring \(Arm\) via Openipmi-developer"
 <openipmi-developer@lists.sourceforge.net>
Reply-To: "Rob Herring \(Arm\)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, minyard@acm.org,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, andrew+netdev@lunn.ch, edumazet@google.com,
 kuba@kernel.org, krzk+dt@kernel.org, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


On Thu, 16 Jan 2025 14:35:17 -0600, Ninad Palsule wrote:
> Add device tree binding document for the IPMB device interface.
> This device is already in use in both driver and .dts files.
> 
> Signed-off-by: Ninad Palsule <ninad@linux.ibm.com>
> ---
>  .../devicetree/bindings/ipmi/ipmb-dev.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ipmi/ipmb-dev.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
