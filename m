Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5D75F8518
	for <lists+openipmi-developer@lfdr.de>; Sat,  8 Oct 2022 13:49:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oh8KT-0005pS-EJ;
	Sat, 08 Oct 2022 11:49:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1oh8KR-0005pM-Ga
 for openipmi-developer@lists.sourceforge.net;
 Sat, 08 Oct 2022 11:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ei9aPoTjAFXtz7ySkdPtJBjwdA7Np2ZW0Z506IUrl/Y=; b=lwAM++J+DnRXUuu6ykuvkg2Na4
 7p865jt22eu2wTZ8hKuBCf5KutbcKRvT0iKgJ7fPMQFtfu7MKA2jHdBqOrfwbbRpiU49lxxhyB/cx
 d/9Dh0hTcNN13E43MT6j8Du0vUqZu5kEZx+ehNu3S9o8uqeLIROaMG5UUKWTtFddqj8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ei9aPoTjAFXtz7ySkdPtJBjwdA7Np2ZW0Z506IUrl/Y=; b=loDnh6uxOR+nu4fprXbBSTXTdS
 GnVw3d+grcVGAY8708ouTQMnRG3c7GO9A/SSHQkuoQGoKIIBfJQdZTVeR8qXZJg0NHl9PQlQTvl+3
 A/BIIdTHrx5FpT1gtMUkRWvJOTqPh/kRZqimGg0M9Hu9wBG8J65/TqWgE786yTOVkGU0=;
Received: from mail-qk1-f173.google.com ([209.85.222.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oh8KN-0005k6-FE for openipmi-developer@lists.sourceforge.net;
 Sat, 08 Oct 2022 11:49:15 +0000
Received: by mail-qk1-f173.google.com with SMTP id v17so4327816qkv.5
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 08 Oct 2022 04:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ei9aPoTjAFXtz7ySkdPtJBjwdA7Np2ZW0Z506IUrl/Y=;
 b=NM//rUNuBpWNdqTDE1r/6bln9Ou3lkFmb31SRWJO8E6gmn2amnmQonFybF7IQJebat
 3v2vFnewU527o0CR1al2r0fRdXsoiJdC8z9nyLwv6CyqTkxVFb9xrCZJr5ZeKhybqPWZ
 GaWhWfjVbkGuV9aHJuCc7qXwvkoSFYM1EyM8ze7T3bQEN+CtBAYS20dyhuI4EQ3G5Bfx
 3iy1xXwkO642+c2FPc8CZDgp+Wegb/LoraSigXYOXRLOUInlwKepkgCtrAmaF+VAbwuT
 KHUAFTp+xYO3424TmdzS5vhwYB+M4t56U8x2CCDVGqJkHexQQKVPw2l83FqKSpTqdDhK
 ZuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ei9aPoTjAFXtz7ySkdPtJBjwdA7Np2ZW0Z506IUrl/Y=;
 b=xiZdq1P/Dn13Rlji9E3/SYmGonBtMeSbgwNG0B1JEc+KUWqtvGxW4WR3lgyLiU0Qwa
 CrKDqX3WNHDzIVHErvzCYpu3u1ZIzgwODIgt5NzS9dPOVa4O9cIcnvCr5lqycMN2qP11
 yEyase7znUfHq28wFyMDJr7Ow7utBtM/Rj6UslznD7ev8yw9EJaZQ0hO1etWk9JJGH7U
 tkEDAGfihUGHR+986j3oD96aZBf/zDo6edvpz4vHq0ezpGnPCZy9tP1QFBQF+2pwxqKA
 3/C6vC3+/+j91oJRKGZFbqWQXnIjN2qLv1/E947f0Dg26WmggIXx3EIpKosuvNevnobe
 uawg==
X-Gm-Message-State: ACrzQf2GJ+hb6DXknuMMt8Di3m/1gfFTKtTdCPHUAXOh2b8uq2IwFK+H
 INJxKl39TxZKOKZD54noEw==
X-Google-Smtp-Source: AMsMyM7aJ+sdGXP5JBDH2sX+xn98tk34jx4U8BCngNe+k17V8QX2GnRHhdXRoW4aeN9glGYKcUwl5A==
X-Received: by 2002:a05:620a:1272:b0:6cd:f04f:f114 with SMTP id
 b18-20020a05620a127200b006cdf04ff114mr6780664qkl.581.1665229745476; 
 Sat, 08 Oct 2022 04:49:05 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 bv12-20020a05622a0a0c00b00393c2067ca6sm4217905qtb.16.2022.10.08.04.49.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Oct 2022 04:49:04 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8d1e:92ef:1fae:f206])
 by serve.minyard.net (Postfix) with ESMTPSA id 93ED1180015;
 Sat,  8 Oct 2022 11:49:03 +0000 (UTC)
Date: Sat, 8 Oct 2022 06:49:02 -0500
From: Corey Minyard <minyard@acm.org>
To: Yuchen Zhang <zhangyuchen.lcr@bytedance.com>
Message-ID: <Y0FjriRusk0H4Fxp@minyard.net>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
 <20221007092617.87597-2-zhangyuchen.lcr@bytedance.com>
 <Y0CBbRqGPDU3g9hQ@minyard.net>
 <28367829-10e1-1a74-5572-ba01b8f8b716@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28367829-10e1-1a74-5572-ba01b8f8b716@bytedance.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Oct 08, 2022 at 09:36:16AM +0800, Yuchen Zhang wrote:
 > > Also, the following is in start_kcs_transaction(): > > > > if ((kcs->state
 != KCS_IDLE) && (kcs->state != KCS_HOSED)) { > > dev_warn(k [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.173 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.173 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oh8KN-0005k6-FE
Subject: Re: [Openipmi-developer] [PATCH 1/3] ipmi: fix msg stack when IPMI
 is disconnected
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 qi.zheng@linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Oct 08, 2022 at 09:36:16AM +0800, Yuchen Zhang wrote:
> > Also, the following is in start_kcs_transaction():
> > 
> > 	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED)) {
> > 		dev_warn(kcs->io->dev, "KCS in invalid state %d\n", kcs->state);
> > 		return IPMI_NOT_IN_MY_STATE_ERR;
> > 	}
> > 
> > You probably need to remove the (kcs->state != KCS_HOSED) part of this
> > now.  Would you agree?
> > 
> > -corey
> > 
> I agree. KCS_HOSED state should be an invalid state.

Can you make this change, run a quick test, and re-submit this one
patch?  With that, I can include this.

Thanks,

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
