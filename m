Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DD024A0EF
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcY-0001Ck-6J; Wed, 19 Aug 2020 13:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1k7lBZ-0005Sq-7Y
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Aug 2020 19:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=; b=QecbN7oaHg70tEXf4/iqCLAhjA
 3iNxwsLlGznkn7t3pr36/NhqoDifL70YSxmdsiiYQ+AQKkHb3zqhXtUsnZq8n0bPFI0gtqTfAJxil
 1TyHbITZahhnBQI/D74cAYIH0uAgh3Y1wpfRPZqDKiqhADOsrHYAyHRTgxbkXCK03p9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=; b=k4qZKrzYBwGjCPwCLylW7Juzjc
 7DEM1SwKHvYapDEoBCEj/9ujsrKcMWeeiUkSCD7eSfjOa+rFqtax3bLz40wE2mFC0Foz13rRnlqLB
 W8C75kD6OSzJLYauyOzpFSpGmvu/8Y7NPTKLzyNJGxJNUEVyVkYlkVV1KANBykCH0AIs=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7lBU-00HLnW-4b
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Aug 2020 19:52:49 +0000
Received: by mail-pl1-f194.google.com with SMTP id u10so8064730plr.7
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Aug 2020 12:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
 b=eDQAepLdsvf97NBV5qq+WRJIVRJOwcaBUEQzU1Umr707qRYx4QRlzqc9mvYICR5qcE
 Z80/4jpH1yQKaDx3y9tFLp0rKDCe3FRG43PteBr3FE3YUZWfrJNvo2A07Qed+3UcCsN9
 s5CQ7VZkr+RU13eLsg7JqtGvKfQe5/QbQEDhtIQ/fQRAevUnbKDsU8sT+8Oir7osRYfi
 OOsn0xCbEKjXVC3GhIKiF3HeFg0qdLk9pHusk8bhReZ06DWjOPvxxBuB+mi4tP7KMeob
 tjizXIrZys9cTA8SqeNNSyIdKevoj4mE09Mdo+ZLYql+H9fjqeZUU2UTeTozMQghU4RV
 02oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RbvZkl+VFld3/SGn1wsxs528WtxH0u9kRcCVuGkaSCQ=;
 b=lM0BH6drBDlWPj2n0O1QE+9KmTcLL3bTtVIw0Ozzb4ga6mJeRluum8CairLh4YN2pM
 S24RkkXPmpMHewJWoIjlaSUtS83LJC0R6dujC/zbhPmiGUFPMxBC29Jo4YcLscFEpP7C
 VBr6ot0bOV3NcOt1CwhbbOGX0KqCB/HWDQ2GEtHwaVuupP3Dv413TFZTlvlCHkgRfXzi
 Rl/i8p5HfTSfM/yQLcB4PH0icDMwdldMK9CVXAoG2SeGgnJn/8OGncrsiuKGNiw0kjaL
 BOnW/zRZcLRNjkbXnDbu8if434/l20Gq4tetH+xz9jJ9ewlwXISwCxC8cANnbTyKgNFs
 DeFA==
X-Gm-Message-State: AOAM531a3st0d6g/4RH0aDXk9HsKX6GW+dPE7I4oLQEKHWz7tiLY6ty1
 zmzjBR13YnL5vpRvMmtHr/Fow2HWHiVUNQQd+XI=
X-Google-Smtp-Source: ABdhPJzFEoQnnFd028Ohjr70q+LK0HAhTgnBlIVjwMDee7dOwAHF3XJdqTZIG2jx09EV04eBp8JK3g==
X-Received: by 2002:aa7:9833:: with SMTP id q19mr5334525pfl.240.1597693478569; 
 Mon, 17 Aug 2020 12:44:38 -0700 (PDT)
Received: from ?IPv6:2605:e000:100e:8c61:bd62:5cef:d7f8:5bff?
 ([2605:e000:100e:8c61:bd62:5cef:d7f8:5bff])
 by smtp.gmail.com with ESMTPSA id y128sm21118788pfy.74.2020.08.17.12.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Aug 2020 12:44:37 -0700 (PDT)
To: Kees Cook <keescook@chromium.org>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
Date: Mon, 17 Aug 2020 12:44:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202008171228.29E6B3BB@keescook>
Content-Language: en-US
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.6 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7lBU-00HLnW-4b
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: Re: [Openipmi-developer] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 oakad@yahoo.com, s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 8/17/20 12:29 PM, Kees Cook wrote:
> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
>> On 8/17/20 2:15 AM, Allen Pais wrote:
>>> From: Allen Pais <allen.lkml@gmail.com>
>>>
>>> In preparation for unconditionally passing the
>>> struct tasklet_struct pointer to all tasklet
>>> callbacks, switch to using the new tasklet_setup()
>>> and from_tasklet() to pass the tasklet pointer explicitly.
>>
>> Who came up with the idea to add a macro 'from_tasklet' that is just
>> container_of? container_of in the code would be _much_ more readable,
>> and not leave anyone guessing wtf from_tasklet is doing.
>>
>> I'd fix that up now before everything else goes in...
> 
> As I mentioned in the other thread, I think this makes things much more
> readable. It's the same thing that the timer_struct conversion did
> (added a container_of wrapper) to avoid the ever-repeating use of
> typeof(), long lines, etc.

But then it should use a generic name, instead of each sub-system using
some random name that makes people look up exactly what it does. I'm not
huge fan of the container_of() redundancy, but adding private variants
of this doesn't seem like the best way forward. Let's have a generic
helper that does this, and use it everywhere.

-- 
Jens Axboe



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
