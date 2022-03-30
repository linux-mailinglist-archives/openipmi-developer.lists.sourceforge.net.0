Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ED84EC6FB
	for <lists+openipmi-developer@lfdr.de>; Wed, 30 Mar 2022 16:46:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nZZb1-0007fj-LH; Wed, 30 Mar 2022 14:46:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <chen.chenchacha@foxmail.com>) id 1nZZb0-0007fU-6u
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 14:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lyIYWjRWK2394qRJCtLt1/nBFWaGHpTgH06aZ3TVYR0=; b=jp+m7vTSKU9FcH0oHyf3Hqb8QW
 tA9+KeDrgg0cn/ZtE2tmh/xwi2MJutR1qwqc76Hu9kBcAX/D2qLHU4Mgner59g1Lico3axZG/NW+G
 WU6jKagxusUC6oOp4arMsYDzjlHiq4XiX/xip4mWENRT537KhPRXqk4t79+m43AV8Roc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lyIYWjRWK2394qRJCtLt1/nBFWaGHpTgH06aZ3TVYR0=; b=FQ41PeD+Yj6zJk5TXOTxjxaTyh
 8odHiUkKUDvx4fVqVo/20IGHpAlnqEq6OaRZn+Hc7WEzCexM+y084pxXe7HVcxqCQVTgIVzl2YYZg
 dvaR6J6CwtXoyAUj9t4Sz+b/LumOTb5JW0itOYBXFmU4MLOVYa7liBd1Y7sDLC8ODE/s=;
Received: from out203-205-221-221.mail.qq.com ([203.205.221.221])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nZZav-0006Rg-Dk
 for openipmi-developer@lists.sourceforge.net; Wed, 30 Mar 2022 14:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1648651595;
 bh=lyIYWjRWK2394qRJCtLt1/nBFWaGHpTgH06aZ3TVYR0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To;
 b=YvwsI/S99LA+2Dfx4wSUtLyibGHtG4+mu7RN1PlAaLa629bsQFERRdrWn3kBXbmy3
 rgbv5ql1Fp/rFEtMI0HKqWmi6aRFEREqIz+FG7kD76eWafQAjNlLxPKS0hXrcatuDr
 jQGHYtbFrYiHMk1u9gdzESV8zDoEqtqWRIO7NiY4=
Received: from [192.168.31.6] ([120.245.132.52])
 by newxmesmtplogicsvrszb7.qq.com (NewEsmtp) with SMTP
 id BA20669C; Wed, 30 Mar 2022 22:46:34 +0800
X-QQ-mid: xmsmtpt1648651594thoybl6x6
Message-ID: <tencent_6E6FCA4BECE8132BD0E0C1B44FF563BE0F05@qq.com>
X-QQ-XMAILINFO: OGZxhFXqN7PJ95cXHuL7G1Iv0qv0jE6JgmQIyzXLbgkchbRxEsMuVd+bW+0++L
 eYo7t971kyk+ZpKVAYM+G/4eG8rW8aDr3Lws4fRi/sOf5MqbzIf80CGf3uFJp42a7J0/OcVWPA5N
 lzQib7XnmrsLEBOEWtYfIrrFSvRNgT7oUwBm7rhfoVGh89RFFEid9bvXWL7s2pDsVPbo5voUIx01
 EC3/QZLRpWOWAzbl8RqPEAgHhTN5MlyrRuOrKBpEoI9W2ji2Qb/T2rjqOKcU/LSY/iD5xlf2ut6r
 X7es8sTEve3w45P6JUt/x2+XylONTvcBXkPKXx5uuJhMHSdzzaR73iO3tKZgW7V4FcWKtImOQkuv
 S3J4KEHFzW2pwUvtjOxcwKcP9jiBqAJKwMDddxxsZm0p8OD+LfSPcM/JqEEdhy/IZ1TfAoyItd8C
 cVqJynNTUcXFQuHTi1YDO9ZV7/+v9b3gl5T96/STe9mifJP2814j9C4SOGRX4MhamEbecefZkwX9
 +Nyujx++9zSjp4BFZ05cyniPyPC9g07ubqxj99qsV10f+uNZTrqomX0T8eQTCJMSP7iqqNAK548Y
 XUsPsJTw7wJyYoQxQws9O6tb2R5pxqU5L5cwbR54g7ptHrsqaBn3C+dz860F7+v5fvV/A/J3vdcz
 tiCmEi9gRIU6RV7nvL9TB3oCnH3SmvbeUPLBIzOOoUcZRFG5E5+scF/68V/StZ+Bh4p5Escq4izh
 c1t0HaKAevA+7g5emIT8fUSpmKyx3acFXHd7Vow/j3Y5IJB7BoA6txZjTfIOLwbKEUWIjNYqFu/8
 Lb+/Nq2bDvZ0wg6chuuVg3YtyNVLhIDJztvFJic/jcJRDUm8zxJ0vvg29+/TDSpcPN1B7sv0qyWq
 In7mcR83PW/TX1f8nZ1hIzNnfP/TASPTpP4h8ebEqcS4DWe+tRNMxJfpNBdUjIng==
X-OQ-MSGID: <e4e37afa-82e0-815b-b667-c64bd7fe9896@foxmail.com>
Date: Wed, 30 Mar 2022 22:46:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: minyard@acm.org
References: <20220329183340.471474-1-minyard@acm.org>
From: chenchacha <chen.chenchacha@foxmail.com>
In-Reply-To: <20220329183340.471474-1-minyard@acm.org>
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/3/30 02:33, > I had actually already started working
 on a set of patches for this, but > I've incorporated some of your work.
 > > There were problems with your patches: > > * The limits on m [...] 
 Content analysis details:   (5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [203.205.221.221 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.221 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chen.chenchacha[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
 1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1nZZav-0006Rg-Dk
Subject: Re: [Openipmi-developer] [PATCH 0/4] ipmi: add limits on users and
 messages
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 2022/3/30 02:33, minyard@acm.org wrote:
> I had actually already started working on a set of patches for this, but
> I've incorporated some of your work.
> 
> There were problems with your patches:
> 
> * The limits on messages were global, not per-user.  This could cause
>    unfairness in the interface.
> 
> * The counts were on the BMC, not on the interface.  The interface is
>    the right place to put them, as that's where the messages flow
>    through, and it's easier to do.
> 
> * Going through all the messages to get the count is kind of inefficient
>    to do on a per-send basis.  Keep a count instead.
> 
> * The ability to flush messages is a no-go.  The IPMI driver guarantees
>    responses and internal kernel users (and external users) rely on that
>    property.  A flush could break the watchdog or ACPI.  The messages
>    will just have to time out.
> 
> This is my proposal for your review.
> 
> Thanks,
> 
> -corey

Hi Corey:

Thanks, My intention is to provide a debug method, it is not perfect.

I try to use your patch in cluster directly.

If the problem no longer occurs, there is no need to cleanup the messages.

--
Chen Guanqiao


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
