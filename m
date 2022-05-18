Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0423452C6CA
	for <lists+openipmi-developer@lfdr.de>; Thu, 19 May 2022 00:56:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nrSap-00042k-Cw; Wed, 18 May 2022 22:56:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <scott.branden@broadcom.com>) id 1nrSKe-0006CR-Un
 for openipmi-developer@lists.sourceforge.net; Wed, 18 May 2022 22:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=01GU0mzSllG45Bplln/k9OrVS2WoVk66uZ9R7jUulpY=; b=Fo9gF6MOWKf96BDrfUMWjYV+rG
 zqjDwMSPKeChwvirsUswRu/QItzC2meynDfM6rt4Ql54LEel7wlWrl//q5PlzYRaqoZ/MmYvfs1CS
 P1S6Ng/MXxJ56512N+Exw7FP32Fbg+wWBuexRRrYB81i+cqZ8HZ2JAhoJFkM4/4q3bF8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=01GU0mzSllG45Bplln/k9OrVS2WoVk66uZ9R7jUulpY=; b=iU9cMjD7Pk+0do/Z4tQtR1R0z8
 eGLmmufjk45l07Z4rSCSCHJGUpSWrpaCTW3/Opajuk2LeX1Y3JfZ4BMIUUTnZRBM+y8QNfrd25MtY
 EngqQiGI1UCWMfVTTNCrb8MWZ674bDQjHTbx06KBlLd8F1MI0OaDb1e9SL9fFuCSphcg=;
Received: from mail-qv1-f44.google.com ([209.85.219.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nrSKS-007fOl-F4
 for openipmi-developer@lists.sourceforge.net; Wed, 18 May 2022 22:39:53 +0000
Received: by mail-qv1-f44.google.com with SMTP id dm17so3066520qvb.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 18 May 2022 15:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=message-id:date:mime-version:user-agent:subject:to:cc:references
 :from:in-reply-to;
 bh=01GU0mzSllG45Bplln/k9OrVS2WoVk66uZ9R7jUulpY=;
 b=N159YVhsuRiNMoDdJytb2PBVCYRfBFhLdHFpSxTOvPP3rf1Sl+3AhwDr9GEmfS42SF
 QaeNVDr0SCcizioMR3gbbwco+7XfXqtT6/tMpTzpoxOuz3/XZ5gzxIeLylqvB3XnBkXI
 u+AGw23AXaEuWHmRhNgC1s6iwQndW6K2N/m1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :to:cc:references:from:in-reply-to;
 bh=01GU0mzSllG45Bplln/k9OrVS2WoVk66uZ9R7jUulpY=;
 b=quCUCP6XYN2wJVqJwJrEzynKLW9kna31zCP2/bX/Vb+4f1jvGnz879Dp1cELYhulVe
 q/wWjJiaItYDmK2rLsULoS3pbu2kcjknQpOrP0UwATM4PX/NjeJ6HSdgwvhW22gffEb/
 /Bwiyzve4L1MdeDB+5lOrkn3fr7uDLgbzPmlf+Paga+6wTh3Xsdi1huyklQW69sZV46E
 cS5fRvXho8jWI4yEunKWQG1MrPG3oEhFRkd4sDuZIQeKy0h89+KA6vj+Ro9t3zMTTYNY
 vGTfW0lkFz1aXvakf8ON3whlrGLuyoIx1eov3sgt5c/VkwdFjEN+iVTrjkJ5TX9LL1Az
 GflA==
X-Gm-Message-State: AOAM532Xsa7OrWFJqcAhnDlddHnp7HHWXET05N8R/atB+6SrjG6fMOJi
 YNrXDz/ljJ3NlphcfBjNa/ezq+K2AYGRDLum6MzH5Q==
X-Google-Smtp-Source: ABdhPJxkLsE36Kq2JcCUoiWV2ClSYG7H68DZOk0Dnd5ufVpjZfzcSk9Zz5AbXiW59SdIpTBHz/LAmw==
X-Received: by 2002:a17:902:ec92:b0:161:7e29:6f9d with SMTP id
 x18-20020a170902ec9200b001617e296f9dmr1458536plg.157.1652912238747; 
 Wed, 18 May 2022 15:17:18 -0700 (PDT)
Received: from [10.136.13.180] ([192.19.161.250])
 by smtp.gmail.com with ESMTPSA id
 ji15-20020a170903324f00b001616e13fccdsm2195161plb.221.2022.05.18.15.17.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 May 2022 15:17:17 -0700 (PDT)
Message-ID: <81878a67-21f1-fee8-1add-f381bc8b05df@broadcom.com>
Date: Wed, 18 May 2022 15:17:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
 Petr Mladek <pmladek@suse.com>, Sebastian Reichel <sre@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Desmond yan <desmond.yan@broadcom.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-20-gpiccoli@igalia.com> <YoJZVZl/MH0KiE/J@alley>
 <ad082ce7-db50-13bb-3dbb-9b595dfa78be@igalia.com> <YoOpyW1+q+Z5as78@alley>
 <d72b9aab-675c-ac89-b73a-b1de4a0b722d@igalia.com>
In-Reply-To: <d72b9aab-675c-ac89-b73a-b1de4a0b722d@igalia.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Guilherme, +Desmond On 2022-05-17 09:42,
 Guilherme G. Piccoli wrote: > On 17/05/2022 10:57,
 Petr Mladek wrote: >> [...] >>>>> --- a/drivers/misc/bcm-vk/bcm_vk_dev.c
 >>>>> +++ b/drivers/misc/bcm-vk/bcm_vk_dev.c >>>>> @@ - [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.44 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nrSKS-007fOl-F4
X-Mailman-Approved-At: Wed, 18 May 2022 22:56:31 +0000
Subject: Re: [Openipmi-developer] [PATCH 19/30] panic: Add the panic
 hypervisor notifier list
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
From: Scott Branden via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Scott Branden <scott.branden@broadcom.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Justin Chen <justinpopo6@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, Nicholas Piggin <npiggin@gmail.com>,
 luto@kernel.org, Mihai Carabas <mihai.carabas@oracle.com>, tglx@linutronix.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Sven Schnelle <svens@linux.ibm.com>, akpm@linux-foundation.org,
 linux-hyperv@vger.kernel.org, dave.hansen@linux.intel.com,
 linux-s390@vger.kernel.org, Stephen Hemminger <sthemmin@microsoft.com>,
 Vasily Gorbik <gor@linux.ibm.com>, vgoyal@redhat.com, mhiramat@kernel.org,
 Andrea Parri <parri.andrea@gmail.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, Markus Mayer <mmayer@broadcom.com>,
 hidehiro.kawai.ez@hitachi.com, linux-arm-kernel@lists.infradead.org,
 kernel-dev@igalia.com, fabiomirmar@gmail.com, halves@canonical.com,
 alejandro.j.jimenez@oracle.com, feng.tang@intel.com,
 zhenwei pi <pizhenwei@bytedance.com>, will@kernel.org,
 Doug Berger <opendmb@gmail.com>, bhe@redhat.com, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, Evan Green <evgreen@chromium.org>,
 bcm-kernel-feedback-list@broadcom.com, Tianyu Lan <Tianyu.Lan@microsoft.com>,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 sparclinux@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-leds@vger.kernel.org, x86@kernel.org,
 mingo@redhat.com, dyoung@redhat.com, paulmck@kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Shile Zhang <shile.zhang@linux.alibaba.com>,
 Wang ShaoBo <bobo.shaobowang@huawei.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, linux-tegra@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, Hari Bathini <hbathini@linux.ibm.com>,
 linux-edac@vger.kernel.org, jgross@suse.com, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-mips@vger.kernel.org,
 Julius Werner <jwerner@chromium.org>, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============2185952528059249825=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============2185952528059249825==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000079842305df50ee6c"

--00000000000079842305df50ee6c
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Guilherme,

+Desmond

On 2022-05-17 09:42, Guilherme G. Piccoli wrote:
> On 17/05/2022 10:57, Petr Mladek wrote:
>> [...]
>>>>> --- a/drivers/misc/bcm-vk/bcm_vk_dev.c
>>>>> +++ b/drivers/misc/bcm-vk/bcm_vk_dev.c
>>>>> @@ -1446,7 +1446,7 @@ static int bcm_vk_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>>>> [... snip ...]
>>>> It seems to reset some hardware or so. IMHO, it should go into the
>>>> pre-reboot list.
>>>
>>> Mixed feelings here, I'm looping Broadcom maintainers to comment.
>>> (CC Scott and Broadcom list)
>>>
>>> I'm afraid it breaks kdump if this device is not reset beforehand - it's
>>> a doorbell write, so not high risk I think...
>>>
>>> But in case the not-reset device can be probed normally in kdump kernel,
>>> then I'm fine in moving this to the reboot list! I don't have the HW to
>>> test myself.
>>
>> Good question. Well, it if has to be called before kdump then
>> even "hypervisor" list is a wrong place because is not always
>> called before kdump.
> 
> Agreed! I'll defer that to Scott and Broadcom folks to comment.
> If it's not strictly necessary, I'll happily move it to the reboot list.
> 
> If necessary, we could use the machine_crash_kexec() approach, but we'll
> fall into the case arm64 doesn't support it and I'm not sure if this
> device is available for arm - again a question for the maintainers.
We register to the panic notifier so that we can kill the VK card ASAP
to stop DMAing things over to the host side.  If it is not notified then
memory may not be frozen when kdump is occurring.
Notifying the card on panic is also needed to allow for any type of 
reset to occur.

So, the only thing preventing moving the notifier later is the chance
that memory is modified while kdump is occurring.  Or, if DMA is 
disabled before kdump already then this wouldn't be an issue and the 
notification to the card (to allow for clean resets) can be done later.
> 
> 
>>   [...]
>>>>> --- a/drivers/power/reset/ltc2952-poweroff.c
>>>>> +++ b/drivers/power/reset/ltc2952-poweroff.c
>>> [...]
>>> This is setting a variable only, and once it's set (data->kernel_panic
>>> is the bool's name), it just bails out the IRQ handler and a timer
>>> setting - this timer seems kinda tricky, so bailing out ASAP makes sense
>>> IMHO.
>>
>> IMHO, the timer informs the hardware that the system is still alive
>> in the middle of panic(). If the timer is not working then the
>> hardware (chip) will think that the system frozen in panic()
>> and will power off the system. See the comments in
>> drivers/power/reset/ltc2952-poweroff.c:
>> [.... snip ...]
>> IMHO, we really have to keep it alive until we reach the reboot stage.
>>
>> Another question is how it actually works when the interrupts are
>> disabled during panic() and the timer callbacks are not handled.
> 
> Agreed here! Guess I can move this one the reboot list, fine by me.
> Unless PM folks think otherwise.
> 
> 
>> [...]
>>> Disagree here, I'm CCing Florian for information.
>>>
>>> This notifier preserves RAM so it's *very interesting* if we have
>>> kmsg_dump() for example, but maybe might be also relevant in case kdump
>>> kernel is configured to store something in a persistent RAM (then,
>>> without this notifier, after kdump reboots the system data would be lost).
>>
>> I see. It is actually similar problem as with
>> drivers/firmware/google/gsmi.c.
>>
>> I does similar things like kmsg_dump() so it should be called in
>> the same location (after info notifier list and before kdump).
>>
>> A solution might be to put it at these notifiers at the very
>> end of the "info" list or make extra "dump" notifier list.
> 
> Here I still disagree. I've commented in the other response thread
> (about Google gsmi) about the semantics of the hypervisor list, but
> again: this list should contain callbacks that
> 
> (a) Should run early, _by default_ before a kdump;
> (b) Communicate with the firmware/hypervisor in a "low-risk" way;
> 
> Imagine a scenario where users configure kdump kernel to save something
> in a persistent form in DRAM - it'd be like a late pstore, in the next
> kernel. This callback enables that, it's meant to inform FW "hey, panic
> happened, please from now on don't clear the RAM in the next FW-reboot".
> I don't see a reason to postpone that - let's see if the maintainers
> have an opinion.
> 
> Cheers,
> 
> 
> Guilherme

--00000000000079842305df50ee6c
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
cRe0CRXA7ypOJSgxO/nOOyQoaJxT7CGg1npOeSpPjEuc3fE4xum3l0nvU85hj6MlKZu43hokdBh0
D0nLyyhEwlR3AC/msdff/UGbM/JR9vk812RP4m/aNWZFJwIDAQABo4IB2zCCAdcwDgYDVR0PAQH/
BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZCaHR0cDovL3NlY3VyZS5nbG9i
YWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3J0MEEGCCsGAQUF
BzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAy
MDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcCARYmaHR0cHM6Ly93d3cuZ2xv
YmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNybDAlBgNV
HREEHjAcgRpzY290dC5icmFuZGVuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAf
BgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUOhjEpl04Sz9dh5MI82E1
V39lM/owDQYJKoZIhvcNAQELBQADggEBAA7Rlypx/esz/iq1yA4+KW7uwV/aBY344BWcXt6I+SNK
VwFBgFWfLj5vaEud9TVv2fPSiaHJo0umemOJk+43QD+bsoqmgcFXd21PrOt7Jjs+jjVED9VC5kJq
S4NNKUkS+BqijJwSegtVygrc/atrIlJbjI21q4qpemUo5fgwqCNm++BmBGTI8yA09vtGSNDRN42k
lLX9hl3iEj5SBgkQqCbbnoE+ZjjKfqt7ED166WhgyQWNrl39yLcvLj+JRUB3RuvXKZjH0NQEEBII
wZBDSkyneykLt3CBNIhSCTxKM6OWxVp936ALSa5K9FNy00TeWSpokR6NmzaW8VD/EjTgvqAxggJt
MIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYD
VQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgx9oXSJpKniO4dS
Gk8wDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIILFBbO32At0jlQYmvDlBzxxKfke
QfIJzMrdu2nIpFihMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIy
MDUxODIyMzkzNFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsG
CWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFl
AwQCATANBgkqhkiG9w0BAQEFAASCAQA8FLty2gL4bPyFC9CAxiz/VJo8bqXQojg2oTiM+YldIaEj
1jLlu2U62mvn6/a4sIYBN56ndv9a2gl8g7LYn4zYrrIve6YR1JQhoYK9EdTaXUFUem5r9cA5USvb
dPBhG3Bb8n1QtlF40P1TNTQ59SzbLKpBc3t8AmRa//9ylMeGXyff1XCc/e5vb2dakg9NgS6WAoMj
vleVKz+Y1UPArC2Szg4w+QHeLfRg88koxlattNvvzQEm5QSivT2Qyv85lFp680KDlJTmbjKnLpfi
xpYLitun6259TW1PkRB2GjBynhT+j42Hb9sbBmANRhSuF6yrqfTQUPzLuC0DLjS8OWos
--00000000000079842305df50ee6c--


--===============2185952528059249825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2185952528059249825==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============2185952528059249825==--

