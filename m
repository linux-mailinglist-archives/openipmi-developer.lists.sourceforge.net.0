Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAAiGiPdjWnE8AAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Feb 2026 15:01:07 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7968A12E08E
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Feb 2026 15:00:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nCEWPO6J5pX4z8q7/vcGKDkyJS5kHMA7V87Q/jYL+8c=; b=iwl9ErE03M58qvFnjpp7/W1QFP
	4yaUDbyP4lTjPIdR2ixqxwK03Ro5AdQa6KICqm8KUSah1NG1TTbjrKuOU+AkT6Ejt9mmd0S6xiheo
	4Nr9NZKjsh1EuGXOSAi010V1U5Pbji9YwPAkaDgnNvqgxBPlSjxWlq8YP6JSrL5KuuX4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vqXFN-0001Oi-S4;
	Thu, 12 Feb 2026 14:00:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <groeck7@gmail.com>) id 1vqXFM-0001Oc-Po
 for openipmi-developer@lists.sourceforge.net;
 Thu, 12 Feb 2026 14:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ylimFk0+B20t6OX8XGGamXW0xE6sIJivZp3QqF6GFLA=; b=RrYYdJEUMMxdxcjLXXnXCb48+u
 oOAl8BHDmZZremFJ1CM9N3vg+wO3TxeQWNrV3wqNddD/Ev4qLhAxFN1+HjCYpGwAXjSxhCkJB4Qnu
 O/UnhOZINPu1Qu9k2jKTk8g041QB8E7z2F8luKY1iKQlOKZnsYn7hs1ud4t6OjwrbKU0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ylimFk0+B20t6OX8XGGamXW0xE6sIJivZp3QqF6GFLA=; b=SQtcvW/oUyZGy8z/cP3cdVv/nS
 d1kKRAF6RXbNb8b8JR2UvQL0eKTcDO3AfzDwcBrECIYHHO8HUhLvvIHBAHTtxu1jH2GNFrCbTpcut
 g+PftDxfTmgAJ0rWGkOHpqeEp4z/M6lLE2dLO1Bm92wD4aLYmzKwpHvTy8mrRZ+2zMsw=;
Received: from mail-dy1-f175.google.com ([74.125.82.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vqXFM-0006e7-2F for openipmi-developer@lists.sourceforge.net;
 Thu, 12 Feb 2026 14:00:44 +0000
Received: by mail-dy1-f175.google.com with SMTP id
 5a478bee46e88-2ba64b5a53aso4577950eec.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 12 Feb 2026 06:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770904838; x=1771509638; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=ylimFk0+B20t6OX8XGGamXW0xE6sIJivZp3QqF6GFLA=;
 b=QJtz6cSa9UWS69BYZSTb865dx5rgeRNfdv5FfZ5tVesVFMOvza5Xg0+bfL3/dC3c3H
 vO2TuHZB9q3hl1QsrOXYhKgtv3q5xXgPJr5njwLucMm6ViVmRqctfSJ0dFCTVH+sKaL/
 ESqaPD9yJa+BXu25QPYT1dFeCLPqPXaiQW0tzycs4rlxeILErwN3xRVRuiTP4LuOUQvJ
 Gv7bDe5RoatrrW92tmZA/kkLpc76HkPew3mWO6iKUMBjc5AMFeE2T1i0f0ggTsbTMGqx
 oigrs9/kHQL2BxO8jQ+/3Hu/cCb9yLNt7YgDACi2w8wY7oNgsZvVp7z9OwcbjLnwKHko
 JHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770904838; x=1771509638;
 h=content-transfer-encoding:in-reply-to:autocrypt:from
 :content-language:references:cc:to:subject:user-agent:mime-version
 :date:message-id:sender:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ylimFk0+B20t6OX8XGGamXW0xE6sIJivZp3QqF6GFLA=;
 b=tzxPyZBkJq8hi/uLWUme+A3wRCZA/ff0g3FARzulqewb/U+ZdiP98PVau/yx/DSVTr
 14uybXYGDOZJ4SWlg5LJCY1bBWRSJpJ0SX6ZTU3PvuC4f4lkY6Oic0h2unEURQOOwAwf
 IuWb20ijc9nRJFGc1bERjG4cMchDipr+aVkJ/522+FdmZPDWWce1kAndblOekqnQpb65
 W1L2TBCSWzVQVnvyixd5DJ+7LF/2DQNu+iVteiavEqXJyxoOfIAtkrvt1TZ5GO9P2YJ1
 1uI8omzB7dHSwZjbP/wpEa1kCMlx5rijyglYo7qjZOO5u2mPfqpszvW2cyem62Zi4yXL
 7/Dw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWoJ+Z1RyB023RROhHUOUHhOg6TOeNTP+ztDZ3heyibP2sz6RC2xs/24+ANVJl4csk0pkyJiEULh8jIX83AAcgVobc=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxgTm1eqFvldObF7YrLuLm6n0cQqLOFT/fp/V5ycN+TYIA45MlO
 SRqrjEO2rzB7VvxhgyldzNAFuZogQXRafQofHKV411zZefcs6LaDKsGI
X-Gm-Gg: AZuq6aIYpRMMKp4gpBdLlAbEdPqexF8/Hiq4cPhvCjp+cJZQGHSU56PLdK3vzygWVp7
 9k5VtAg1Iez/EIlL9M4UW0SMTk5rh4g25D6SD2bxmJ7cbgw3ELnwr2xcJ4Ne+zv1lvoZWCoCTnD
 GxcGVtJvh4Jpgkchtb+os6MsZXv0WkVeI5Awjml09BMfE3R0dDYmrFx0Sy0afXlLU/onkVJceM0
 WCtppq+6I+dIe7pmkpYPckn4AhapjmwuAt6I//r7YTFxicXcyD92U8ORKPHBGFsLziTD7QexIxW
 +n8Zc+3Lz8u3FrXyWZJrzq/bniqTZnTjwxxtfT73nVI5Myc3bM+eEx+R3kFby4cFz1Ta8I+go43
 Dc+hqKMi10egOJYYMi32osj7k91+grljkQ658hhZeFHUDrQ+obq/QGtBj+tHmNwD4dUQXA+eoA/
 ijOjHL53hXzbAsnz6qfl23TwWxUMB2JlRz0PRxrNJ2KIuC2TAEwY1Yno5tkRe3eEnXTr3gzXwc
X-Received: by 2002:a05:7300:a14c:b0:2b7:95d5:3a32 with SMTP id
 5a478bee46e88-2baa7f7c7e5mr1192493eec.1.1770904838009; 
 Thu, 12 Feb 2026 06:00:38 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5?
 ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2ba9dcd00d2sm3919413eec.20.2026.02.12.06.00.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Feb 2026 06:00:36 -0800 (PST)
Message-ID: <975b4e7a-e007-4710-9048-b975cd66780d@roeck-us.net>
Date: Thu, 12 Feb 2026 06:00:34 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux ACPI <linux-acpi@vger.kernel.org>, Corey Minyard <corey@minyard.net>
References: <10802540.nUPlyArG6x@rafael.j.wysocki>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 xsFNBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87XdZQiB9cpN
 RYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQbq/t0tkMzYDRxfJ7
 nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ejsZ8PykxyJs98UWhF54tGRWFl
 7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+/O5ll7yz/o/JxK5vO/sduYDIlFTvBZDh
 gzaEtNf5tQjsjG4io8E0Yq0ViobLkS2RTNZT8ICq/Jmvl0SpbHRvYwa2DhNsK0YjHFQBB0FX
 IdhdUEzNefcNcYvqigJpdICoP2e4yJSyflHFO4dr0OrdnGLe1Zi/8Xo/2+M1dSSEt196rXaC
 kwu2KgIgmkRBb3cp2vIBBIIowU8W3qC1+w+RdMUrZxKGWJ3juwcgveJlzMpMZNyM1jobSXZ0
 VHGMNJ3MwXlrEFPXaYJgibcg6brM6wGfX/LBvc/haWw4yO24lT5eitm4UBdIy9pKkKmHHh7s
 jfZJkB5fWKVdoCv/omy6UyH6ykLOPFugl+hVL2Prf8xrXuZe1CMS7ID9Lc8FaL1ROIN/W8Vk
 BIsJMaWOhks//7d92Uf3EArDlDShwR2+D+AMon8NULuLBHiEUQARAQABzTJHdWVudGVyIFJv
 ZWNrIChMaW51eCBhY2NvdW50KSA8bGludXhAcm9lY2stdXMubmV0PsLBgQQTAQIAKwIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAmgrMyQFCSbODQkACgkQyx8mb86fmYGcWRAA
 oRwrk7V8fULqnGGpBIjp7pvR187Yzx+lhMGUHuM5H56TFEqeVwCMLWB2x1YRolYbY4MEFlQg
 VUFcfeW0OknSr1s6wtrtQm0gdkolM8OcCL9ptTHOg1mmXa4YpW8QJiL0AVtbpE9BroeWGl9v
 2TGILPm9mVp+GmMQgkNeCS7Jonq5f5pDUGumAMguWzMFEg+Imt9wr2YA7aGen7KPSqJeQPpj
 onPKhu7O/KJKkuC50ylxizHzmGx+IUSmOZxN950pZUFvVZH9CwhAAl+NYUtcF5ry/uSYG2U7
 DCvpzqOryJRemKN63qt1bjF6cltsXwxjKOw6CvdjJYA3n6xCWLuJ6yk6CAy1Ukh545NhgBAs
 rGGVkl6TUBi0ixL3EF3RWLa9IMDcHN32r7OBhw6vbul8HqyTFZWY2ksTvlTl+qG3zV6AJuzT
 WdXmbcKN+TdhO5XlxVlbZoCm7ViBj1+PvIFQZCnLAhqSd/DJlhaq8fFXx1dCUPgQDcD+wo65
 qulV/NijfU8bzFfEPgYP/3LP+BSAyFs33y/mdP8kbMxSCjnLEhimQMrSSo/To1Gxp5C97fw5
 3m1CaMILGKCmfI1B8iA8zd8ib7t1Rg0qCwcAnvsM36SkrID32GfFbv873bNskJCHAISK3Xkz
 qo7IYZmjk/IJGbsiGzxUhvicwkgKE9r7a1rOwU0ETofVZwEQALlLbQeBDTDbwQYrj0gbx3bq
 7kpKABxN2MqeuqGr02DpS9883d/t7ontxasXoEz2GTioevvRmllJlPQERVxM8gQoNg22twF7
 pB/zsrIjxkE9heE4wYfN1AyzT+AxgYN6f8hVQ7Nrc9XgZZe+8IkuW/Nf64KzNJXnSH4u6nJM
 J2+Dt274YoFcXR1nG76Q259mKwzbCukKbd6piL+VsT/qBrLhZe9Ivbjq5WMdkQKnP7gYKCAi
 pNVJC4enWfivZsYupMd9qn7Uv/oCZDYoBTdMSBUblaLMwlcjnPpOYK5rfHvC4opxl+P/Vzyz
 6WC2TLkPtKvYvXmdsI6rnEI4Uucg0Au/Ulg7aqqKhzGPIbVaL+U0Wk82nz6hz+WP2ggTrY1w
 ZlPlRt8WM9w6WfLf2j+PuGklj37m+KvaOEfLsF1v464dSpy1tQVHhhp8LFTxh/6RWkRIR2uF
 I4v3Xu/k5D0LhaZHpQ4C+xKsQxpTGuYh2tnRaRL14YMW1dlI3HfeB2gj7Yc8XdHh9vkpPyuT
 nY/ZsFbnvBtiw7GchKKri2gDhRb2QNNDyBnQn5mRFw7CyuFclAksOdV/sdpQnYlYcRQWOUGY
 HhQ5eqTRZjm9z+qQe/T0HQpmiPTqQcIaG/edgKVTUjITfA7AJMKLQHgp04Vylb+G6jocnQQX
 JqvvP09whbqrABEBAAHCwWUEGAECAA8CGwwFAmgrMyQFCSbODQkACgkQyx8mb86fmYHlgg/9
 H5JeDmB4jsreE9Bn621wZk7NMzxy9STxiVKSh8Mq4pb+IDu1RU2iLyetCY1TiJlcxnE362kj
 njrfAdqyPteHM+LU59NtEbGwrfcXdQoh4XdMuPA5ADetPLma3YiRa3VsVkLwpnR7ilgwQw6u
 dycEaOxQ7LUXCs0JaGVVP25Z2hMkHBwx6BlW6EZLNgzGI2rswSZ7SKcsBd1IRHVf0miwIFYy
 j/UEfAFNW+tbtKPNn3xZTLs3quQN7GdYLh+J0XxITpBZaFOpwEKV+VS36pSLnNl0T5wm0E/y
 scPJ0OVY7ly5Vm1nnoH4licaU5Y1nSkFR/j2douI5P7Cj687WuNMC6CcFd6j72kRfxklOqXw
 zvy+2NEcXyziiLXp84130yxAKXfluax9sZhhrhKT6VrD45S6N3HxJpXQ/RY/EX35neH2/F7B
 RgSloce2+zWfpELyS1qRkCUTt1tlGV2p+y2BPfXzrHn2vxvbhEn1QpQ6t+85FKN8YEhJEygJ
 F0WaMvQMNrk9UAUziVcUkLU52NS9SXqpVg8vgrO0JKx97IXFPcNh0DWsSj/0Y8HO/RDkGXYn
 FDMj7fZSPKyPQPmEHg+W/KzxSSfdgWIHF2QaQ0b2q1wOSec4Rti52ohmNSY+KNIW/zODhugJ
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <10802540.nUPlyArG6x@rafael.j.wysocki>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/12/26 05:41, Rafael J. Wysocki wrote: > From: Rafael
 J. Wysocki <rafael.j.wysocki@intel.com> > > Revert commit bc3a9d217755
 ("ipmi:si:
 Gracefully handle if the BMC is > non-functional") that atte [...] 
 Content analysis details:   (0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [groeck7(at)gmail.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [groeck7(at)gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1vqXFM-0006e7-2F
Subject: Re: [Openipmi-developer] [PATCH v1] Revert "ipmi:si: Gracefully
 handle if the BMC is non-functional"
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
Cc: linux-hwmon@vger.kernel.org, regressions@lists.linux.dev,
 Linux PM <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Igor Raits <igor@gooddata.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:rafael@kernel.org,m:linux-acpi@vger.kernel.org,m:corey@minyard.net,m:linux-hwmon@vger.kernel.org,m:regressions@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:jaroslav.pulchart@gooddata.com,m:igor@gooddata.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RSPAMD_URIBL_FAIL(0.00)[lists.sourceforge.net:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[7.38.105.216.asn.rspamd.com:query timed out];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[linux@roeck-us.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,openipmi-developer-bounces@lists.sourceforge.net];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email]
X-Rspamd-Queue-Id: 7968A12E08E
X-Rspamd-Action: no action

On 2/12/26 05:41, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Revert commit bc3a9d217755 ("ipmi:si: Gracefully handle if the BMC is
> non-functional") that attempted to improve the handling of the cases
> in which the BMC was not responsive, but did not succeed.
> 
> Instead, it introduced a regression causing AML in ACPI tables that use
> IMPI operation regions to block indefinitely on the tx_msg->tx_complete
> completion in acpi_ipmi_space_handler(), which may affect ACPI control
> methods on any system where IPMI is involved resulting in various types
> of breakage that is not straightforward to diagnose.
> 
> For example, on the system where the regression was first observed, it
> caused sysfs accesses to attributes exposed by the acpi_power_meter
> driver to block because they involved AML evaluation which is not
> super-easy to connect to IPMI.
> 
> This is a nasty and rather urgent problem with no viable fix in sight.
> 
> Note that AI was involved in diagnosing it, but didn't help much.
> 
> Fixes: bc3a9d217755 ("ipmi:si: Gracefully handle if the BMC is non-functional")
> Closes: https://lore.kernel.org/linux-acpi/CAK8fFZ6Vi4xayvdKh-_eLi-nDNMLuEoMsvwEnb33QqnwS7o4BA@mail.gmail.com/
> Reported-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Tested-by: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>
> Cc: All applicable <stable@vger.kernel.org>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Acked-by: Guenter Roeck <linux@roeck-us.net>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
