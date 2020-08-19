Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C0224A46F
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 18:56:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8RNz-0002sT-QR; Wed, 19 Aug 2020 16:56:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <axboe@kernel.dk>) id 1k8RNx-0002sH-Im
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 16:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=; b=i0KlI+1nHv2d/5BWvMoVp7ZPcu
 uQJKu4hIh6Ik38iW+cP22Yumxi7SplwZ3ZDtaGIhLB1wxG4QHvMK8dzOJpOWo1+85yb+Y5g7nzmZV
 c135wl42ip4er9FXDFLKKCPWeIzNsiSiRiOgNpvRAjrniFslu8renG3Gd88Sx34qX3BQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=; b=NBiie/K/CKixeaDvcFxOI+5msq
 Dq1Zibep7pz0ZsExsW0o2crUkGDhKaj0ZgBaOYHFNd1eOQ68lzESEKcqY1UrRU5KRzBRBQb38sNIX
 kpkS2ahtOacKBd8aH/L9ggZlX0GpUcIUKfpwJlge/lUOWS+cOKh1KR5MbF49bs0fWZAY=;
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8RNs-001Uc5-LV
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 16:56:25 +0000
Received: by mail-pj1-f66.google.com with SMTP id ha11so1393879pjb.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 Aug 2020 09:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=;
 b=XsGUJB1Hdc8az/rXuro1bWhBsdgGdQHjYKQpuunAo8x0WekUdWBNsmSDFJj67GVWVG
 5hPdTKlI6scfsCliWtIOLtIYsVj1YwZaDB5Moe7+6/awpbvAiGHWPGqlMMiQH755AjTS
 vfPiJNDbB+aPu6VjtibhyAOy9LSk3+Tr2jZ+44/eXBtbf+XOZ8K+VQwL9BGEgF8JGQKK
 5KG7zpuu/Xea1f/72jgUaeUpmt4D/ORaIe5NpGI/tYWzxvMEzO/L884n90j+BH7HiH1m
 QMIIcf8a02yI8nCtJ4GjS4kGwrIFsNa8Q8Tri7Y3/f7lv1J5QYlIRrGUMNjHynb2RGMA
 GacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=;
 b=XzSm8NobhoXisLGKz0qSwZ7axlsMTiACclGwFxuvWJFEBKK4m2vKQRt8HsTpCUMg+X
 hNbeR/D8jw7H3b3ZlCakDrRa+g1AuyNv1nZgkaYWCrqelfDlWUpvHmWCJgfSh4A6bLyr
 4Fz8Tyi7bV8dyyp6DJVAAoU8c44n3xh2RXysUHNyyry/t3EMWiSqGieRXLMkMhcDzHzA
 EIzRRb0mEr4/iF7/OjewsPRANyiW7cf8Z37uX3rvVZJcWyaoF9iTXCeI1eGBkXE5m7ga
 PCAdSUkiTPI2C0IS8sPTgWsr/pPLVbHSnTNWbypv+239rHSLxwMtDCI+0TfpdaUXmHIj
 57ag==
X-Gm-Message-State: AOAM532DGDqIY7R5EhZEeQlgpjyJDGlINi7GVtBBk5xkugKNHXa309Jn
 s6bbCVWKhFiKyS7QQlEJ22cIBA==
X-Google-Smtp-Source: ABdhPJwmU9GVpeA/a5GSwGnni05DgMGKqd87OvDU6WClq1X+wlrKxKnBzQboSPP7uq4T48DrxExHZQ==
X-Received: by 2002:a17:90a:f2c7:: with SMTP id
 gt7mr4669042pjb.204.1597856175023; 
 Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
Received: from [192.168.1.182] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id w23sm25765910pgj.5.2020.08.19.09.56.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Aug 2020 09:56:14 -0700 (PDT)
To: Allen <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2b1a5987-9b54-d63e-b3da-d3024505776c@kernel.dk>
Date: Wed, 19 Aug 2020 10:56:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
Content-Language: en-US
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.4 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8RNs-001Uc5-LV
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, Daniel Vetter <daniel@ffwll.ch>,
 linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
 shawnguo@kernel.org, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 8/19/20 9:24 AM, Allen wrote:
>> [...]
>>>> Since both threads seem to have petered out, let me suggest in
>>>> kernel.h:
>>>>
>>>> #define cast_out(ptr, container, member) \
>>>>     container_of(ptr, typeof(*container), member)
>>>>
>>>> It does what you want, the argument order is the same as
>>>> container_of with the only difference being you name the containing
>>>> structure instead of having to specify its type.
>>>
>>> Not to incessantly bike shed on the naming, but I don't like
>>> cast_out, it's not very descriptive. And it has connotations of
>>> getting rid of something, which isn't really true.
>>
>> Um, I thought it was exactly descriptive: you're casting to the outer
>> container.  I thought about following the C++ dynamic casting style, so
>> out_cast(), but that seemed a bit pejorative.  What about outer_cast()?
>>
>>> FWIW, I like the from_ part of the original naming, as it has some
>>> clues as to what is being done here. Why not just from_container()?
>>> That should immediately tell people what it does without having to
>>> look up the implementation, even before this becomes a part of the
>>> accepted coding norm.
>>
>> I'm not opposed to container_from() but it seems a little less
>> descriptive than outer_cast() but I don't really care.  I always have
>> to look up container_of() when I'm using it so this would just be
>> another macro of that type ...
>>
> 
>  So far we have a few which have been suggested as replacement
> for from_tasklet()
> 
> - out_cast() or outer_cast()
> - from_member().
> - container_from() or from_container()
> 
> from_container() sounds fine, would trimming it a bit work? like from_cont().

I like container_from() the most, since it's the closest to contain_of()
which is a well known idiom for years. The lines will already be shorter
without the need to specify the struct, so don't like the idea of
squeezing container into cont for any of them. For most people, cont is
usually short for continue, not container.

-- 
Jens Axboe



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
