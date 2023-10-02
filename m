Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B494E7B5D24
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Oct 2023 00:30:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnRQx-0007bo-Uc;
	Mon, 02 Oct 2023 22:30:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kuba@kernel.org>) id 1qnRQw-0007bg-JQ
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 22:30:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GYQg13+/CypVBjYeojrfjsRGH+GQbhVs3vcgHaEbtcs=; b=ZrkSsxa55cpLtTACfZB3XBEdyk
 hbbRIp0pyd7MjV30ce564pAmIZ9381lyuEfmvLHhlxBe28IBnekwVHb7H3XtZ4y2U+aw2al4bhc7/
 zaMp8IW3Myyj+/jO/VyxopKuXbd3DAimPeGJwWv2gzGTpKa/x8RnwykvZ1SCJvXuLtZM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GYQg13+/CypVBjYeojrfjsRGH+GQbhVs3vcgHaEbtcs=; b=g98Yd0zbR0cmI7XEAT9+4gTnBW
 mAZSf5qHx9B4m/sEsOPjOyoCTVjLRhKZ1Z4AD6IFI00L5DKROeXW2Lz6Cy7L/nAdJHy89eNgIWMOI
 /oSU3DIgr46PsmTQ2ZFnWp51fvhN4huhxz4f7N8K+Gh0H5pqTA5nnxibJWyuFrtuQdIc=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnRQs-0005ip-Ri for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 22:30:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id E8227B81691;
 Mon,  2 Oct 2023 22:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4E63C433C7;
 Mon,  2 Oct 2023 22:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696285822;
 bh=79cFsXTH0qYAJS5Y5EHSRryuk0cU8c3bNjf376YvJYI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IzZEajQcdtcOlQdu0t+KOWccV9I8tJNmfAc0TXNtJ0FOSGdn1gwaVVo89k2r6hVHD
 Im9qUf5syLC2SonUXONxJSOqGeJxVST1RK+jylYg31ZKd3BWzCdGMcpaazSphXpCEI
 uqrdnU5LAbQsE8NwpR1Bf/V1Yxj0aHH9uWB2iJ0tpbNDu4B+nzYZgF+gusbfgXqdql
 Gou0cP8aURCwJarjT07+UpBq6Nr5LomJoyG/U/nHvfD4prPTaOiyiIBGJKEyY26mio
 OqHuP0bIQImFy4us2DonJeZW5o5GZGwPR6rCTDIby9S9RVA36aT10kKQT9JOLO0Bpx
 ZHk/vOLb/NsXA==
Date: Mon, 2 Oct 2023 15:30:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Message-ID: <20231002153011.5444fd83@kernel.org>
In-Reply-To: <20231002143441.545-4-aladyshev22@gmail.com>
References: <20231002143441.545-1-aladyshev22@gmail.com>
 <20231002143441.545-4-aladyshev22@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 2 Oct 2023 17:34:41 +0300 Konstantin Aladyshev wrote:
 > This change adds a MCTP KCS transport binding, as defined by the DMTF >
 specificiation DSP0254 - "MCTP KCS Transport Binding". > A MCTP [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnRQs-0005ip-Ri
Subject: Re: [Openipmi-developer] [PATCH v2 3/3] mctp: Add MCTP-over-KCS
 transport binding
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
Cc: tmaimon77@gmail.com, minyard@acm.org, yuenn@google.com, andrew@aj.id.au,
 venture@google.com, openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 tali.perry1@gmail.com, avifishman70@gmail.com, edumazet@google.com,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org, jk@codeconstruct.com.au,
 matt@codeconstruct.com.au, pabeni@redhat.com,
 openipmi-developer@lists.sourceforge.net, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon,  2 Oct 2023 17:34:41 +0300 Konstantin Aladyshev wrote:
> This change adds a MCTP KCS transport binding, as defined by the DMTF
> specificiation DSP0254 - "MCTP KCS Transport Binding".
> A MCTP protocol network device is created for each KCS channel found in
> the system.
> The interrupt code for the KCS state machine is based on the current
> IPMI KCS driver.

Still doesn't build, please make sure W=1 C=1 build is clean with both
GCC and Clang (you can point them at a specific path to avoid building
the entire kernel with the warnings enabled).
-- 
pw-bot: cr


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
