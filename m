Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CBA5F88BE
	for <lists+openipmi-developer@lfdr.de>; Sun,  9 Oct 2022 04:00:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ohLbj-00005u-Rc;
	Sun, 09 Oct 2022 01:59:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangyuchen.lcr@bytedance.com>) id 1ohLbh-00005o-W0
 for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 01:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yH25RyDrgB/CHrd3oT3w5RJPoVT7/+e3hVxNpT5AUKM=; b=BWr1XmFJLFsLlab5j8rlwwpDgI
 12wt8F6CJIVRZFEOr2XqaQGgUDzvVG6l5E3yoYGX20BBWKlyTPEbLi7/aC3lnxgUMvU6A80AGqV9J
 QSsI7b3lDLtWeuxOvl9/5Z4pbYrHZjYnmLgyJMWoMagRgnZa/iA5i/sMx0vefAHCKzHQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yH25RyDrgB/CHrd3oT3w5RJPoVT7/+e3hVxNpT5AUKM=; b=MF3CVcnlDxJmMMkyMSlSf7mm57
 TaxuFQi7OrnPDEVD1qLC1Ai3ieJpPUjIpZMatwBJ6beBROmAl3WtuYEh9t7yXrJ+cPvyAFg7PWVVC
 hXkS/RJY0G0QRbmpyMGWlv0y1j2fn2UBtJP+nrZhMtMA+t04oTHEl4JMG8LOnAPB1x50=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ohLbd-0005R5-IM for openipmi-developer@lists.sourceforge.net;
 Sun, 09 Oct 2022 01:59:57 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 d7-20020a17090a2a4700b0020d268b1f02so925078pjg.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 08 Oct 2022 18:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=yH25RyDrgB/CHrd3oT3w5RJPoVT7/+e3hVxNpT5AUKM=;
 b=wHVWpGwwakxY8QjLniIt4xKr4MTLDNSifAj1pE4j0IC9BMHi/hZdM+cvdt/51j33WO
 Pt5nb29Ii+3VxL7ajUZ7J8HmXrdQcMim7h1WJk0FYIPKMntFoSPD6DcOJJjpk85DjTlh
 A4Da17orqREmCshiGODhBQ4zUsTr+esxy08/BUUxLhdu28sh8g9qcUFAHmfo4+TSreqk
 S9dTH5v/dyQzvfn/UBrUl+8Tp1rSlhW/e4U8AZogOFtzRbri6swEIsId2rwPB7ZOx/8e
 +GMr3RQrNORWXajSNDhJXG3qLLjRBlm7YmRd7LmMgkaOkYmAhZi/dU9IDS1kT8Hsmu7j
 1+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=yH25RyDrgB/CHrd3oT3w5RJPoVT7/+e3hVxNpT5AUKM=;
 b=o02dy5NgJH2knwQzZUquMzCXn5gnAibRzNALuLr62XeU0DPn5+FCo+gZPvjpOCgA1q
 0nlt5Y+1QydTHZpKdhMbvH+befF42sq5ti3E6kBNvBQHpxzMFGArIbKx6Ct3Y5xnaDGo
 hoAdaHen8s0D5Fpk4o+qCwGqvi5Yz7+KCAzt1bVq098ubksa5M4v+uUnib/jOZ3v1DjT
 g8N7XyRIZng/WOOQGxbxHeVGz79feTq4xi588XIxa6cGv/dBV+MbEFI3zuNWLYexz7+O
 M0CQUC7z51SCldwFuNpowWlP3rV2XPIVUbYUQjELKYWYsd1L2h+4jx2aXtaFV7MHBy99
 MT4Q==
X-Gm-Message-State: ACrzQf3VsZe5JjbgMnMstGaHRPptehg7iZlcNDw2rVFuyxPTglLSWFfQ
 1OxfBm4AoKoF4oBroHyTgDpTpi3qN+OC8g==
X-Google-Smtp-Source: AMsMyM4gUYBHIPfolci8Wx6a+KdbvBPYFIhxNeIxfHsZbqEINFtVr6P1PmISrWoqLYWx24OK39Sh1w==
X-Received: by 2002:a17:902:76c3:b0:17a:68:767d with SMTP id
 j3-20020a17090276c300b0017a0068767dmr11964720plt.109.1665276809468; 
 Sat, 08 Oct 2022 17:53:29 -0700 (PDT)
Received: from [10.200.9.255] ([139.177.225.234])
 by smtp.gmail.com with ESMTPSA id
 d10-20020a170902654a00b0016c50179b1esm3845768pln.152.2022.10.08.17.53.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 08 Oct 2022 17:53:28 -0700 (PDT)
Message-ID: <298867dd-01d9-cd61-cdaa-95bbaf2dd2e4@bytedance.com>
Date: Sun, 9 Oct 2022 08:53:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.3.0
Content-Language: en-US
To: minyard@acm.org
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
 <20221007092617.87597-2-zhangyuchen.lcr@bytedance.com>
 <Y0CBbRqGPDU3g9hQ@minyard.net>
 <28367829-10e1-1a74-5572-ba01b8f8b716@bytedance.com>
 <Y0FjriRusk0H4Fxp@minyard.net>
From: Yuchen Zhang <zhangyuchen.lcr@bytedance.com>
In-Reply-To: <Y0FjriRusk0H4Fxp@minyard.net>
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Ok, I will send v2 today. On 10/8/22 7:49 PM, Corey Minyard
 wrote: > On Sat, Oct 08, 2022 at 09:36:16AM +0800, Yuchen Zhang wrote: >>>
 Also, the following is in start_kcs_transaction(): >>> >>> if ((kcs->state
 != KCS_IDLE) && [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.6 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ohLbd-0005R5-IM
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 qi.zheng@linux.dev
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Ok, I will send v2 today.

On 10/8/22 7:49 PM, Corey Minyard wrote:
> On Sat, Oct 08, 2022 at 09:36:16AM +0800, Yuchen Zhang wrote:
>>> Also, the following is in start_kcs_transaction():
>>>
>>> 	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED)) {
>>> 		dev_warn(kcs->io->dev, "KCS in invalid state %d\n", kcs->state);
>>> 		return IPMI_NOT_IN_MY_STATE_ERR;
>>> 	}
>>>
>>> You probably need to remove the (kcs->state != KCS_HOSED) part of this
>>> now.  Would you agree?
>>>
>>> -corey
>>>
>> I agree. KCS_HOSED state should be an invalid state.
> 
> Can you make this change, run a quick test, and re-submit this one
> patch?  With that, I can include this.
> 
> Thanks,
> 
> -corey

--
Thanks,
Zhang Yuchen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
