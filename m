Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E928674C
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008D8-Bw; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <skhan@linuxfoundation.org>) id 1kNFuI-0005vn-VF
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 13:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7Re7sYUHoP/OO8RJy6m0dCE8FjQyDvN9idLxneZjSGs=; b=lt3oysLmGtCyfgXO9GNPY9Fx9U
 72tSpvA61HzpPOpVFWCBKMAbhu0RNW4N2rtYJyM7Cd4xULjb9Acqlprek3NxESL8JCxRkjxKodiH7
 oHq7id3KMUnoI4Eeskuezxc4ZrCxWlFva2MbSJOc2tibqqtnkN2E6IY/ay8th1LRRVm8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Re7sYUHoP/OO8RJy6m0dCE8FjQyDvN9idLxneZjSGs=; b=eiBIBEyr+rJmjb8BsHDN6qrRKy
 G/w96zROE4ceC+YLP7Y8zPlqdPhCPlPRM70qdJ/ht2GoL29KlOHWSBXuDSviTuEO7XKgvdz1uh2/0
 2oMYCkzcoexVnt9xMPWDskK/DleVTKmt/2CyzD8MeFxfAsPhWB826EBIYiT88/TjaEpU=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kNFuD-00A7WC-3V
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 13:43:02 +0000
Received: by mail-ot1-f68.google.com with SMTP id u25so4449229otq.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 29 Sep 2020 06:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7Re7sYUHoP/OO8RJy6m0dCE8FjQyDvN9idLxneZjSGs=;
 b=Z34rZ/ds72mfUVTwVAO13Bpz4khcxmzLmZRTJ6BeCzZVGwvFQBFtfTqV+Mw0LWRYNM
 uCrAI5JhrSTo6VZxNGORq4+uDlbuWvNn0BzZwcj+1vO5F++bvuicz0Q+A30JgXV/f7rA
 Rk9jpCrpw+utP3CvREty99qb9cv8smpJnWoLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7Re7sYUHoP/OO8RJy6m0dCE8FjQyDvN9idLxneZjSGs=;
 b=C1fk7+zj/eRQhwQFeyJ6OL+2asLFl3hUJEINor5E5uVPXrcLen1klJK7jUIprv23KN
 OH9VRdItUkyzj0vuc2p0bj74/eP316b2xOeCSqIL9sz0Yc87ZsFfoT7HFy5tiFjELfSE
 ys/6Ugm74IlK84+tj9N1EWqKmailK0qmc9uworzGrXftC9uwLZiJiL9E8EgN0ojXn7Ez
 EN6BQKomCUEt8PyPKh4SsSFX1TfCtPGIGsblX0ikpKmQG2qcJ2Vi4W6eHkPR+2YK4rU/
 n7MtKWFBLmyQrJTuFoss8/Bo1xPFcvnlqQ+f/hZZNGRCFlBdIz36PFoIBJKZcf1eEmim
 /IxQ==
X-Gm-Message-State: AOAM530F4qoQyXX8pwmGfSbGwCVZtdxDkZoOCMedH+fbxL3imHGo4hAO
 KgizPEfjOKCLcjh4k56XFqRiRQ==
X-Google-Smtp-Source: ABdhPJxomgEcCkXHcyd2u2LBzXalo3/5KY6BNqNVB1FRlJIPPq8bhwRXFJ9dfNYvva75m6zRbuIoZQ==
X-Received: by 2002:a05:6830:196:: with SMTP id
 q22mr2688536ota.221.1601386971432; 
 Tue, 29 Sep 2020 06:42:51 -0700 (PDT)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net.
 [24.9.64.241])
 by smtp.gmail.com with ESMTPSA id l4sm993642oie.25.2020.09.29.06.42.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 29 Sep 2020 06:42:50 -0700 (PDT)
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@inria.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>, Shuah Khan <shuah@kernel.org>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <CAMj1kXGh+CzuXkAnqsoMO2A3T1p=D6uFOV347Ym5+VFn5U1gWg@mail.gmail.com>
 <20200929124108.GY4282@kadam>
 <alpine.DEB.2.22.394.2009291445050.2808@hadrien>
 <5f0d2b20f5088281363bb4a35c5652a2c087f159.camel@perches.com>
From: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <cd75e2d1-9923-b725-78cd-fd5611431584@linuxfoundation.org>
Date: Tue, 29 Sep 2020 07:42:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5f0d2b20f5088281363bb4a35c5652a2c087f159.camel@perches.com>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1kNFuD-00A7WC-3V
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:24 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>,
 drbd-dev@tron.linbit.com, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Valdis_Kl=c4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 9/29/20 7:34 AM, Joe Perches wrote:
> On Tue, 2020-09-29 at 14:47 +0200, Julia Lawall wrote:
>> On Tue, 29 Sep 2020, Dan Carpenter wrote:
>>> The times where commas are used deliberately to replace curly braces are
>>> just evil.  Either way the code is cleaner with semi-colons.
>>
>> I also found exaamples like the following to be particularly unforunate:
>>
>>                                  fprintf(stderr,
>>                                          "page_nr %lu wrong count %Lu %Lu\n",
>>                                         page_nr, count,
>>                                         count_verify[page_nr]), exit(1);
>>
>> The exit is very hard to see, unless you know to look for it.
> 
> I sent that patch last month.
> https://patchwork.kernel.org/patch/11734877/
> 

I see what happened. This patch touches lib, cpupower, and selftests.
Guess lost in the limbo of who takes it.

  tools/lib/subcmd/help.c                    |  10 +-
  tools/power/cpupower/utils/cpufreq-set.c   |  14 +-
  tools/testing/selftests/vm/gup_benchmark.c |  18 +-
  tools/testing/selftests/vm/userfaultfd.c   | 296 +++++++++++++--------
  4 files changed, 210 insertions(+), 128 deletions(-)

I can take it through one of my trees.

thanks,
-- Shuah


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
