Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 221A545DCDD
	for <lists+openipmi-developer@lfdr.de>; Thu, 25 Nov 2021 16:06:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mqGJv-0006gl-5y; Thu, 25 Nov 2021 15:05:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <kuba@kernel.org>) id 1mqGJt-0006gf-W1
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Nov 2021 15:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c5n5vuprKNcSCHgjydntbJV268PxsUEBl6s+Xuvm+aI=; b=jIWXaiNPLcXcDk5wCxu1269a86
 wKHoItHcxGyZ1J0q2fN+lqlEOrzF7GWMqtuVBNEnQTJgk5ZlAbwaEEF92X6mfMBmnzv/6Rde0qINj
 TOkIcxyD+KmuTxwkcPnZbEgBUh7BfEW++cUOvezG2IHfAeT9EfV0nCl9k68XsgRRyStE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c5n5vuprKNcSCHgjydntbJV268PxsUEBl6s+Xuvm+aI=; b=Rg+oxDbKWncZC8yZkTJGZV0Xlk
 GtWMjMaIbKubpce071OzT1O0zfZ9QslvVWlQTmNoipjb2+9OHL3N5pA+oweVAwUHlw7FEO6g2Rqs2
 GoPrbwz3kx/Kfxg+8XKQPNcp9TdTUkjVDKAartdq2I66HmZ6EgWh/2Y1BRkMLZcBCfV4=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mqGJp-008vjn-Hc
 for openipmi-developer@lists.sourceforge.net; Thu, 25 Nov 2021 15:05:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00A9661038;
 Thu, 25 Nov 2021 15:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637852744;
 bh=4/XxSKbDN99TrKGrzYnMW2/tjTV3XTjDVg3jBYTrSX8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tYPmRntiPCK//9nEVNcwh8rDOYcofvDC6nOa5hrSic8IHZJNwjFJ+XdNkjVYTTE68
 8QCCme37ZtMSYbpBVPd9dLswD8iIjFCIBCyXAE66I/tSuWIkKavRAHambjE0mVQvsJ
 79WzFq3QpzW38EwwJ5gkVzU06i5CjxJHLfRto8y5FpFD5Ri8fILjI/0GJWpAEcDycC
 GZMVEDn2SSGzYWpjDkBjp8NjNXTIqxaWf2zQpL7pzmyPTj4gCRCUCtSA9iOCl3ufdP
 9pQ6QvXXGRn8hmsJgZ67DgfUTiL/+vvj85euSTMre9y0lJF7YMHb+HW4UD3yUu/Y3u
 4jiY0yq8TgIFQ==
Date: Thu, 25 Nov 2021 07:05:43 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20211125070543.7d3225af@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20211125142140.GV15676@minyard.net>
References: <20211124210323.1950976-1-kuba@kernel.org>
 <20211125142140.GV15676@minyard.net>
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 25 Nov 2021 08:21:40 -0600 Corey Minyard wrote: >
 On Wed, Nov 24, 2021 at 01:03:23PM -0800, Jakub Kicinski wrote: > > We're
 hitting OOB accesses in handle_ipmb_direct_rcv_rsp() (memcpy of > > [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mqGJp-008vjn-Hc
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix oob access due to uninit
 smi_msg type
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
Cc: openipmi-developer@lists.sourceforge.net, andrew.manley@sealingtech.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, 25 Nov 2021 08:21:40 -0600 Corey Minyard wrote:
> On Wed, Nov 24, 2021 at 01:03:23PM -0800, Jakub Kicinski wrote:
> > We're hitting OOB accesses in handle_ipmb_direct_rcv_rsp() (memcpy of
> > size -1) after user space generates a message. Looks like the message
> > is incorrectly assumed to be of the new IPMB type, because type is never
> > set and message is allocated with kmalloc() not kzalloc().
> > 
> > Fixes: 059747c245f0 ("ipmi: Add support for IPMB direct messages")
> > Signed-off-by: Jakub Kicinski <kuba@kernel.org>  
> 
> This is correct, and in my queue.  Thanks for the fix.

Where is your queue, BTW? I see not T entry in MAINTAINERS and nothing
of note in the github tree from which you send PRs.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
