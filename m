Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C7CE8216
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Dec 2025 21:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9lIfAA890j1jGsJZFMj/h8ibyNc8beMcB1xxFRnh/IA=; b=QO00Kd6vqDMFnf4zuzkkLV3FWf
	f9oiNAzMnN8iw2AgkkuZCJQfrDmfW3Bp815XXzZoddDCCPv1cAKItWW0HRpzRxa0whf8IRh3FrLd8
	HzKUpVhr3MQk9adaIA18JTPzR7ZirDNvw9U6asjVrJq1woDL6cmHZDQho14Q3+oRG2Ww=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vaJpL-0007ig-QD;
	Mon, 29 Dec 2025 20:26:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vaJpK-0007iS-86
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 20:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MCqf0vJntMTDanWf7LnApjt0fyoqEx0M9GktESRzeRo=; b=IhoV6ZOkL15hj3l7dDAlMV3T1h
 dt5A2wADij+XS4DFo//Lx1QUW5Ilc/vWfrcvjBuJKu9mUpJ846aLVDYNNxBeQ3MmqkPchYpVOCKHG
 mK9ueICse8OKOHvHp3VnpI/hF9MzcLOtgS+KGLnGo83VuMSaK0+q91uX0lQZ9SgU1s6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MCqf0vJntMTDanWf7LnApjt0fyoqEx0M9GktESRzeRo=; b=YspFPMtElpsT3ooXbTZtFRaWZG
 e1y+DzWtP3LLXMbwt3u1NYPvBT8PO6QPEq6WF5PsN32w0zXDnZR9NP9U8vDBR9yOBqQ+j+o88gSE5
 xPSQERG56hMg/ifE4uy+tNm4WuueKeV5rvIvrLpbg08JxnHbWijHl7RMasFU51mNcSgA=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vaJpJ-0000yE-LZ for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 20:26:50 +0000
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-64b58553449so11396491a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Dec 2025 12:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767039998; x=1767644798; darn=lists.sourceforge.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=MCqf0vJntMTDanWf7LnApjt0fyoqEx0M9GktESRzeRo=;
 b=TbTr8hZhX+Uu2DMCAkZILdhoY1pC6TV0QqopLxwa/RZu7YTsgd++IyqsQQhPG/ohJl
 RXP9+HrGvEzN4WUshY5M91MKtbRC+YalBiXbJXYIS+vtNPMB0x1xRwfq22fCTzgP+AX/
 6jO+zoZEnJqh0mzDFb9EB5f34bvhNXcQJXjIxTREPLWtnoFyfUn7SGWKTlFY2d5eMDFI
 zkZ9k5vh1EvU5OheVFHF4373hIKJeA7/DoXf57rohtsL1+1RjcvfPGM9mvE1uKMWXnVU
 K148bV8PaQfouwSlZddoZqPVQnjSFKvPxNQzbpypiY+yj3yYs6Ch2gZDAb5r9KRdPJas
 Aseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767039998; x=1767644798;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MCqf0vJntMTDanWf7LnApjt0fyoqEx0M9GktESRzeRo=;
 b=VKyzNtCWbCNWC7Ah046HJ2BpliR7pFvbczM2Dp44Jbxu8ZVyj9tXwB3Q+Z6M7OFFwo
 KmJYqhNNv1tLKjF5sXMlUf728q1LeSk6VoRgLQd+ihK6w92R2NuM9QCBsGAY/umvgUI1
 Dq99XeO9WOEIKJBDf+aD3VTkY2T4UxXuq8yySoBsAVKrZ8xOivYVdqMNXcnZjyntDzFf
 bfgXQZRiFSTyBMWSK+Hc7jrmHaS0wdrssLR717/E1GUFZAKl12S+BBtcO3I+tGxoQDQG
 CLfv9NyqD5c7algChBTJOc+TUl1rfgiW0ezMA8n+FyhjZj4pvEDfC8awxNks1eFvsgz1
 ParQ==
X-Gm-Message-State: AOJu0YwAYIHJWbx1/98wA6Tv1JsfUIxCGTXcnpLSedE2aiLC89Rq6h9W
 efpnizn9V9P+ZVdOWncrMehb+vrytn1PEgqnYVOTbkWRLnKNcvNir0SfNInHeTEqEpKonJgRzLP
 qeqN8dC6j3toXeu9DRrC+9/IIWT3FmGsDz6DEOWaj4w==
X-Gm-Gg: AY/fxX75iy3HXGf4zPYSiny7240Bg7z+JjZSmNV00xjE9N1F0JDC6SAhJR2VlRvdS4F
 UWe2cTah1vkRJNKSY95h3aGJn5n/PHIZ/+tjdNSEhFpfLWw2PdJkzp/KGXXi7sNdJTbcrcbSEXO
 FA0+sKnVBO3CTJhekdbI8ohwHuj7EKmxv4AkC7jQuUKkWedDh9FGu9Oq0B3RVBct8KTC+8iJq6t
 wVPPczCt5hBaWRdAEwn3HYcwzhk23BFtootad74HwdOv6HsZnhcNHX93oKYHMRHN3tbbg==
X-Google-Smtp-Source: AGHT+IFCjFlY9lgdrXZAUHCXuu+2P0Of7MRFh2PgkrLhDh1z6J6+kgeGtUxkp2N3pnwaapiyYU9um0U7AI9n+TeqcJA=
X-Received: by 2002:a17:907:1c27:b0:b7c:eb19:6a3f with SMTP id
 a640c23a62f3a-b803705e31cmr3309685466b.35.1767039997817; Mon, 29 Dec 2025
 12:26:37 -0800 (PST)
MIME-Version: 1.0
References: <CACosJgzCym0fGOh4_itgnV5Dk+vOqk=Xy+dtvbmCGcpKCFY5XA@mail.gmail.com>
 <aVHKTMfSgFnBzkyA@mail.minyard.net>
 <CACosJgxWRTCATq=8kd7s2JSOjn1qL5B4KFYtzPAmVj55Xc689w@mail.gmail.com>
 <CAB9gMfpx4T3Z3PbG8J0vS8EAaBfhhkekvVJ5SQA-gV4X2VqQ1Q@mail.gmail.com>
In-Reply-To: <CAB9gMfpx4T3Z3PbG8J0vS8EAaBfhhkekvVJ5SQA-gV4X2VqQ1Q@mail.gmail.com>
From: Michal Berger <michallinuxstuff@gmail.com>
Date: Mon, 29 Dec 2025 21:26:23 +0100
X-Gm-Features: AQt7F2r4hwaB1t0CWXSJMxEtfvM94HvRZVU5IESkBteWeS-1UYH6xDFjyzFcmxY
Message-ID: <CACosJgzgF4K5QBZX=ddyH_P9p0S2H3nLsu+T2dhVR25TrpEi8Q@mail.gmail.com>
To: Corey Minyard <corey@minyard.net>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: For fun and giggles I quickly checked how some of the
 Supermicro's
 BMCs behave in similar scenarios - for events sent over LAN channel 1, the
 generator ID was set to 0x5180. So that indicates a slave [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1vaJpJ-0000yE-LZ
Subject: Re: [Openipmi-developer] [PATCH] lanserv/bmc_sensor: Adjust
 Generator ID
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============6832619923432466786=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============6832619923432466786==
Content-Type: multipart/alternative; boundary="0000000000005fb74206471d0f07"

--0000000000005fb74206471d0f07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For fun and giggles I quickly checked how some of the Supermicro's BMCs
behave in similar scenarios - for events sent over LAN channel 1, the
generator ID was set to 0x5180. So that indicates a slave address, the
actual channel number is 0x5 (indeed, under this particular platform this
number matched the IPMB channel, same as 0x0), with LUN 1 so RqSA,
RqLUN essentially.

The other funny thing is that if the event is sent raw with 8 bytes, but
over the LAN channel  the Supermicro's BMC just takes it in without any
hiccups - it just sets the generator ID as if it was received over the
system interface. When sending raw 7 bytes, over the system interface, it
still works, but the generator ID ends up with some really awkward value.
E.g.:

  $ ipmitool -Ilanplus -UXXXXXX -PXXXXXX raw 0x4 0x2 0x41 0x4 0x3 0x1 0x80
0x3 0x2 0x4 # 8 bytes, even though we send it via LAN/IPMB
  $ ipmitool -Ilanplus -UXXXXXX -PXXXXXX raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0
0xff
  ff ff c5 01 02 da d9 52 69 41 00 04 03 01 80 03 # <- Generator ID =3D=3D
0x0041 (not really expected, but I will take it)
  02 04
  $ ipmitool -Ilanplus -UXXXXXX -PXXXXXX raw 0x4 0x2 0x4 0x3 0x1 0x80 0x3
0x2 0x4 # 7 bytes
  $ ipmitool -Ilanplus -UXXXXXX -PXXXXXX raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0
0xff
  ff ff cc 01 02 83 dd 52 69 80 21 04 03 01 80 03 # <- Generator ID =3D=3D
0x2180
  02 04

# Let ipmitool generate the event "properly"
$ ipmitool -Ilanplus -UXXXXXX -PXXXXXX event "Some Temp Sensor" ucr
$ ipmitool -Ilanplus -UXXXXXX -PXXXXXX raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0
0xff
ff ff c6 01 02 5c da 52 69 80 51 04 01 01 01 59 # <- Generator ID  =3D=3D
0x5180 (can't really say why this differs from the example above)
5c 5a

# local
$ ipmitool raw 0x4 0x2 0x41 0x4 0x3 0x1 0x80 0x3 0x2 0x4 # 7 bytes?
$ ipmitool raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff
ff ff c9 01 02 d9 db 52 69 00 0f 04 03 fe 80 03 # <- Generator ID =3D=3D 0x=
0f00
(huh?)
02 04
$ ipmitool raw 0x4 0x2 0x41 0x4 0x3 0x1 0x80 0x3 0x2 0x4 # 8 bytes
$ ipmitool raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff
ff ff ca 01 02 48 dc 52 69 41 00 04 03 fe 80 03 # <- Generator ID =3D=3D 0x=
0041
(expected)
02 04
$ ipmitool event "Some Temp Sensor" ucr
$ ipmitool raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff
ff ff cb 01 02 8b dc 52 69 41 00 04 01 01 01 59 # <- Generator ID =3D=3D 0x=
0041
(expected)
5c 5a

In any case, I am very much fine with how the final commit looks like. :)

Regards,
Michal


pon., 29 gru 2025 o 14:58 Corey Minyard <corey@minyard.net> napisa=C5=82(a)=
:

>
>
> On Mon, Dec 29, 2025 at 6:05=E2=80=AFAM Michal Berger <michallinuxstuff@g=
mail.com>
> wrote:
>
>> >First your mailer is munging up the patches pretty badly.  I have to
>> >hand apply them, which is a big pain.
>>
>> Ah, apologies, I didn't check the formatting before I sent these
>> emails (was rushing a bit, won't happen again).
>>
>> > If you could check it, that would be great.
>> Tested, everything seems to be working fine. That said, there's one
>> tiny thing I am a bit torn about:
>>
>> sel_data[4] =3D msg->saddr & 0x7f;
>>
>
>> For the case where the event is not received over the system
>> interface, e.g., LAN channel, the msg->saddr is set to 0x81. So the
>> above
>> sets the Byte 1 of the generator ID to 1. With 0x1 LAN channel, we end
>> up with 0x1001 as the generator ID for that event. So that
>> indicates the generator holds an actual SWID of value 0x0. If we
>> cross-reference that with the Table 5-4, System Software IDs it
>> essentially says "BIOS generated this message" which sounds a bit odd.
>> Initially, having 0x1000 made somewhat more sense to me
>> as the way I read this was "no swid, the i2c address is 0h but the
>> channel number is !=3D 0h - this is definitely not a system software
>> event, but one which still fits under IPMB messaging umbrella (i.e.
>> LAN, as per Table 29-4, Platform Event (Event Message) Command)".
>>
>> That said, I don't feel very strongly about it, I am just more curious
>> what the "right" interpretation of the spec should be here.
>> Regardless, code LGTM. :)
>>
>
> I debated about this a little, and I didn't consider LAN channels
> properly.  And the spec leaves a lot of room for creative interpretation.
>
> But I did mess this up.  First, it's the low bit, not the high bit.
> Second, the source address on a LAN channel comes from the message header=
,
> like an IPMB message.  But it can be a SWID, so masking the top bit is
> wrong.  I'll remove that and setting the high bit on system interfaces.
>
> Thanks,
>
> -corey
>
>
>> Regards,
>> Michal
>>
>> pon., 29 gru 2025 o 01:24 Corey Minyard <corey@minyard.net> napisa=C5=82=
(a):
>> >
>> > On Sun, Dec 28, 2025 at 10:38:03PM +0100, Michal Berger wrote:
>> > > Right now channel number is being unconditionally included in the
>> > > Generator ID field. However, as per the SEL Event Records it should
>> > > remain 0h depending on what medium/interface the event msg is
>> > > received over.
>> >
>> > You are correct, there was a lot to be desired in this funciton.
>> >
>> > There were, unfortunately, a lot of issues with this patch.
>> >
>> > First your mailer is munging up the patches pretty badly.  I have to
>> > hand apply them, which is a big pain.
>> >
>> > On the chagne itself, you still weren't handling all cases for the
>> > address in the SEL Event Records.
>> >
>> > And for an IPMB messages, the wrong data was copied and it was indexin=
g
>> > beyond the end of the message data when filling out the data.
>> >
>> > I've heavily modified the patch and pushed it up.  If you could check
>> > it, that would be great.
>> >
>> > Thanks,
>> >
>> > -corey
>> >
>> > >
>> > > So have this:
>> > >
>> > > # ipmitool sel list
>> > >  SEL has no entries
>> > >  # ipmitool event 1
>> > >  Sending SAMPLE event: Temperature - Upper Critical - Going High
>> > >  # ipmitool sel get 0x1 | grep "Generator ID"
>> > >   Generator ID          : 0041
>> > >
>> > > Instead of:
>> > >
>> > >  # ipmitool event 1
>> > >  Sending SAMPLE event: Temperature - Upper Critical - Going High
>> > >  # ipmitool sel get 0x2 | grep "Generator ID"
>> > >   Generator ID          : f041
>> > >
>> > > As we are at it adjust the msg length of the platform event - as per
>> the
>> > > Table 29-4, Platform Event (Event Message) Command, the 8 bytes is
>> > > a msg length dedicated for the System Interface which must include
>> > > the Generator ID. Case in point, when the event is sent over the
>> > > LAN channel, ipmi_sim rejects it due to invalid length of the
>> > > request (e.g. ipmitool does not include the extra software ID in the
>> > > event data hence sending only 7 bytes):
>> > >
>> > >  $ ipmitool -Ilanplus -Hlocalhost -p4242 -UXXXXX -PXXXXX event 1
>> > >  Sending SAMPLE event: Temperature - Upper Critical - Going High
>> > >  Platform Event Message command failed: Request data length invalid
>> > >
>> > > Signed-off-by: Michal Berger <michallinuxstuff@gmail.com>
>> > > ---
>> > > lanserv/bmc_sensor.c | 22 +++++++++++++++++++++-
>> > > 1 file changed, 21 insertions(+), 1 deletion(-)
>> > >
>> > > diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c
>> > > index be6c537f..cc21bf9c 100644
>> > > --- a/lanserv/bmc_sensor.c
>> > > +++ b/lanserv/bmc_sensor.c
>> > > @@ -58,6 +58,7 @@
>> > > #include <sys/stat.h>
>> > > #include <fcntl.h>
>> > >
>> > > +#include <OpenIPMI/ipmi_mc.h>
>> > > #include <OpenIPMI/ipmi_err.h>
>> > > #include <OpenIPMI/ipmi_msgbits.h>
>> > > #include <OpenIPMI/ipmi_bits.h>
>> > > @@ -113,16 +114,35 @@ handle_platform_event(lmc_data_t    *mc,
>> > >                      void          *cb_data)
>> > > {
>> > >     unsigned char sel_data[13];
>> > > +    uint8_t msg_length =3D 7; // IPMB MESSAGING
>> > >
>> > > -    if (check_msg_length(msg, 8, rdata, rdata_len))
>> > > +    if (msg->orig_channel->channel_num =3D=3D 15 ||
>> > > +               msg->orig_channel->medium_type =3D=3D
>> IPMI_CHANNEL_MEDIUM_SYS_INTF)
>> > > +       msg_length =3D 8; // SYSTEM INTERFACE MESSAGING
>> > > +
>> > > +    if (check_msg_length(msg, msg_length, rdata, rdata_len))
>> > >        return;
>> > >
>> > >     sel_data[0] =3D 0;
>> > >     sel_data[1] =3D 0;
>> > >     sel_data[2] =3D 0;
>> > >     sel_data[3] =3D 0;
>> > > +    /*
>> > > +       From Table 32-1, SEL Event Records:
>> > > +         Byte 1
>> > > +           [7:1] - 7-bit I2C . Slave Address, or 7-bit system
>> software ID
>> > > +           [0] 0b =3D ID is IPMB Slave Address
>> > > +               1b =3D system software ID
>> > > +         Byte 2
>> > > +          [7:4] - Channel number. Channel that event message was
>> > > received over. 0h if the
>> > > +                  event message was received via the system
>> > > interface, primary IPMB, or
>> > > +                  internally generated by the BMC.
>> > > +    */
>> > >     sel_data[4] =3D msg->data[0];
>> > >     sel_data[5] =3D msg->orig_channel->channel_num << 4;
>> > > +    if (msg->orig_channel->channel_num =3D=3D 15 ||
>> > > +               msg->orig_channel->medium_type =3D=3D
>> IPMI_CHANNEL_MEDIUM_SYS_INTF)
>> > > +       sel_data[5] =3D 0;
>> > >     sel_data[6] =3D msg->data[1];
>> > >     sel_data[7] =3D msg->data[2];
>> > >     sel_data[8] =3D msg->data[3];
>> > > --
>> > > 2.43.0
>> > >
>> > >
>> > > _______________________________________________
>> > > Openipmi-developer mailing list
>> > > Openipmi-developer@lists.sourceforge.net
>> > > https://lists.sourceforge.net/lists/listinfo/openipmi-developer
>>
>

--0000000000005fb74206471d0f07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For fun and giggles I quickly checked how some of the Supe=
rmicro&#39;s BMCs behave in similar scenarios - for events sent over LAN ch=
annel 1, the generator ID was set to 0x5180. So that=C2=A0indicates a slave=
 address, the actual channel number is 0x5 (indeed, under this particular p=
latform this number matched the IPMB channel, same as 0x0), with LUN 1 so R=
qSA, RqLUN=C2=A0essentially.<br><br>The other funny thing is that if the ev=
ent is sent raw with 8 bytes, but over the LAN channel=C2=A0 the Supermicro=
&#39;s BMC just takes it in without any hiccups - it just sets the generato=
r ID as if it was received over the system interface. When=C2=A0sending raw=
 7 bytes, over the system interface, it still works, but the generator ID e=
nds up with some really awkward value. E.g.:<br><br>=C2=A0 $ ipmitool -Ilan=
plus -UXXXXXX -PXXXXXX raw 0x4 0x2 0x41 0x4 0x3 0x1 0x80 0x3 0x2 0x4 # 8 by=
tes, even though we send it via LAN/IPMB<br>=C2=A0 $ ipmitool -Ilanplus -UX=
XXXXX -PXXXXXX raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff<br>=C2=A0 ff ff c5 0=
1 02 da d9 52 69 41 00 04 03 01 80 03 # &lt;- Generator ID =3D=3D 0x0041 (n=
ot really expected, but I will take it)<br>=C2=A0 02 04<br>=C2=A0 $ ipmitoo=
l -Ilanplus -UXXXXXX -PXXXXXX raw 0x4 0x2 0x4 0x3 0x1 0x80 0x3 0x2 0x4 # 7 =
bytes<br>=C2=A0 $ ipmitool -Ilanplus -UXXXXXX -PXXXXXX raw 0xa 0x43 0x0 0x0=
 0xff 0xff 0x0 0xff<br>=C2=A0 ff ff cc 01 02 83 dd 52 69 80 21 04 03 01 80 =
03 # &lt;- Generator ID =3D=3D 0x2180<br>=C2=A0 02 04=C2=A0<br><br># Let ip=
mitool generate the event &quot;properly&quot;<br>$ ipmitool -Ilanplus -UXX=
XXXX -PXXXXXX event &quot;Some Temp Sensor&quot; ucr<br>$ ipmitool -Ilanplu=
s -UXXXXXX -PXXXXXX raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff<br>ff ff c6 01 =
02 5c da 52 69 80 51 04 01 01 01 59 # &lt;- Generator ID=C2=A0 =3D=3D 0x518=
0 (can&#39;t really say why this differs from the example above)<br>5c 5a<b=
r><br># local<br>$ ipmitool raw 0x4 0x2 0x41 0x4 0x3 0x1 0x80 0x3 0x2 0x4 #=
 7 bytes?<br>$ ipmitool raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff<br>ff ff c9=
 01 02 d9 db 52 69 00 0f 04 03 fe 80 03 # &lt;- Generator ID =3D=3D 0x0f00 =
(huh?)<br>02 04<br>$ ipmitool raw 0x4 0x2 0x41 0x4 0x3 0x1 0x80 0x3 0x2 0x4=
 # 8 bytes<br>$ ipmitool raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff<br>ff ff c=
a 01 02 48 dc 52 69 41 00 04 03 fe 80 03 # &lt;- Generator ID =3D=3D 0x0041=
 (expected)<br>02 04<br>$ ipmitool event &quot;Some Temp Sensor&quot; ucr<b=
r>$ ipmitool raw 0xa 0x43 0x0 0x0 0xff 0xff 0x0 0xff<br>ff ff cb 01 02 8b d=
c 52 69 41 00 04 01 01 01 59 # &lt;- Generator ID =3D=3D 0x0041 (expected)<=
br>5c 5a<br><br>In any case, I am very much fine with how the final commit =
looks like. :)<br><br>Regards,<div>Michal</div></div><br><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">po=
n., 29 gru 2025 o 14:58=C2=A0Corey Minyard &lt;<a href=3D"mailto:corey@miny=
ard.net">corey@minyard.net</a>&gt; napisa=C5=82(a):<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Dec 29, 2025 at 6:05=E2=80=AFAM Michal Berger &lt;<=
a href=3D"mailto:michallinuxstuff@gmail.com" target=3D"_blank">michallinuxs=
tuff@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">&gt;First your mailer is munging up the patches pretty badly.=
=C2=A0 I have to<br>
&gt;hand apply them, which is a big pain.<br>
<br>
Ah, apologies, I didn&#39;t check the formatting before I sent these<br>
emails (was rushing a bit, won&#39;t happen again).<br>
<br>
&gt; If you could check it, that would be great.<br>
Tested, everything seems to be working fine. That said, there&#39;s one<br>
tiny thing I am a bit torn about:<br>
<br>
sel_data[4] =3D msg-&gt;saddr &amp; 0x7f;<br></blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
For the case where the event is not received over the system<br>
interface, e.g., LAN channel, the msg-&gt;saddr is set to 0x81. So the<br>
above<br>
sets the Byte 1 of the generator ID to 1. With 0x1 LAN channel, we end<br>
up with 0x1001 as the generator ID for that event. So that<br>
indicates the generator holds an actual SWID of value 0x0. If we<br>
cross-reference that with the Table 5-4, System Software IDs it<br>
essentially says &quot;BIOS generated this message&quot; which sounds a bit=
 odd.<br>
Initially, having 0x1000 made somewhat more sense to me<br>
as the way I read this was &quot;no swid, the i2c address is 0h but the<br>
channel number is !=3D 0h - this is definitely not a system software<br>
event, but one which still fits under IPMB messaging umbrella (i.e.<br>
LAN, as per Table 29-4, Platform Event (Event Message) Command)&quot;.<br>
<br>
That said, I don&#39;t feel very strongly about it, I am just more curious<=
br>
what the &quot;right&quot; interpretation of the spec should be here.<br>
Regardless, code LGTM. :)<br></blockquote><div><br></div><div>I debated abo=
ut this a little, and I didn&#39;t consider LAN channels properly.=C2=A0 An=
d the spec leaves a lot of room for creative interpretation.</div><div><br>=
</div><div>But I did mess this up.=C2=A0 First, it&#39;s the low bit, not t=
he high bit. Second, the source address on a LAN channel comes from the mes=
sage header, like an IPMB message.=C2=A0 But it can be a SWID, so masking t=
he top bit is wrong.=C2=A0 I&#39;ll remove that and setting the high bit on=
 system interfaces.</div><br><div>Thanks,</div><div><br></div><div>-corey</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Regards,<br>
Michal<br>
<br>
pon., 29 gru 2025 o 01:24 Corey Minyard &lt;<a href=3D"mailto:corey@minyard=
.net" target=3D"_blank">corey@minyard.net</a>&gt; napisa=C5=82(a):<br>
&gt;<br>
&gt; On Sun, Dec 28, 2025 at 10:38:03PM +0100, Michal Berger wrote:<br>
&gt; &gt; Right now channel number is being unconditionally included in the=
<br>
&gt; &gt; Generator ID field. However, as per the SEL Event Records it shou=
ld<br>
&gt; &gt; remain 0h depending on what medium/interface the event msg is<br>
&gt; &gt; received over.<br>
&gt;<br>
&gt; You are correct, there was a lot to be desired in this funciton.<br>
&gt;<br>
&gt; There were, unfortunately, a lot of issues with this patch.<br>
&gt;<br>
&gt; First your mailer is munging up the patches pretty badly.=C2=A0 I have=
 to<br>
&gt; hand apply them, which is a big pain.<br>
&gt;<br>
&gt; On the chagne itself, you still weren&#39;t handling all cases for the=
<br>
&gt; address in the SEL Event Records.<br>
&gt;<br>
&gt; And for an IPMB messages, the wrong data was copied and it was indexin=
g<br>
&gt; beyond the end of the message data when filling out the data.<br>
&gt;<br>
&gt; I&#39;ve heavily modified the patch and pushed it up.=C2=A0 If you cou=
ld check<br>
&gt; it, that would be great.<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; -corey<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; So have this:<br>
&gt; &gt;<br>
&gt; &gt; # ipmitool sel list<br>
&gt; &gt;=C2=A0 SEL has no entries<br>
&gt; &gt;=C2=A0 # ipmitool event 1<br>
&gt; &gt;=C2=A0 Sending SAMPLE event: Temperature - Upper Critical - Going =
High<br>
&gt; &gt;=C2=A0 # ipmitool sel get 0x1 | grep &quot;Generator ID&quot;<br>
&gt; &gt;=C2=A0 =C2=A0Generator ID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : 0041=
<br>
&gt; &gt;<br>
&gt; &gt; Instead of:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 # ipmitool event 1<br>
&gt; &gt;=C2=A0 Sending SAMPLE event: Temperature - Upper Critical - Going =
High<br>
&gt; &gt;=C2=A0 # ipmitool sel get 0x2 | grep &quot;Generator ID&quot;<br>
&gt; &gt;=C2=A0 =C2=A0Generator ID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : f041=
<br>
&gt; &gt;<br>
&gt; &gt; As we are at it adjust the msg length of the platform event - as =
per the<br>
&gt; &gt; Table 29-4, Platform Event (Event Message) Command, the 8 bytes i=
s<br>
&gt; &gt; a msg length dedicated for the System Interface which must includ=
e<br>
&gt; &gt; the Generator ID. Case in point, when the event is sent over the<=
br>
&gt; &gt; LAN channel, ipmi_sim rejects it due to invalid length of the<br>
&gt; &gt; request (e.g. ipmitool does not include the extra software ID in =
the<br>
&gt; &gt; event data hence sending only 7 bytes):<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 $ ipmitool -Ilanplus -Hlocalhost -p4242 -UXXXXX -PXXXXX eve=
nt 1<br>
&gt; &gt;=C2=A0 Sending SAMPLE event: Temperature - Upper Critical - Going =
High<br>
&gt; &gt;=C2=A0 Platform Event Message command failed: Request data length =
invalid<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Michal Berger &lt;<a href=3D"mailto:michallinuxstu=
ff@gmail.com" target=3D"_blank">michallinuxstuff@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; lanserv/bmc_sensor.c | 22 +++++++++++++++++++++-<br>
&gt; &gt; 1 file changed, 21 insertions(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/lanserv/bmc_sensor.c b/lanserv/bmc_sensor.c<br>
&gt; &gt; index be6c537f..cc21bf9c 100644<br>
&gt; &gt; --- a/lanserv/bmc_sensor.c<br>
&gt; &gt; +++ b/lanserv/bmc_sensor.c<br>
&gt; &gt; @@ -58,6 +58,7 @@<br>
&gt; &gt; #include &lt;sys/stat.h&gt;<br>
&gt; &gt; #include &lt;fcntl.h&gt;<br>
&gt; &gt;<br>
&gt; &gt; +#include &lt;OpenIPMI/ipmi_mc.h&gt;<br>
&gt; &gt; #include &lt;OpenIPMI/ipmi_err.h&gt;<br>
&gt; &gt; #include &lt;OpenIPMI/ipmi_msgbits.h&gt;<br>
&gt; &gt; #include &lt;OpenIPMI/ipmi_bits.h&gt;<br>
&gt; &gt; @@ -113,16 +114,35 @@ handle_platform_event(lmc_data_t=C2=A0 =C2=
=A0 *mc,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 void=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *cb_data)<br>
&gt; &gt; {<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0unsigned char sel_data[13];<br>
&gt; &gt; +=C2=A0 =C2=A0 uint8_t msg_length =3D 7; // IPMB MESSAGING<br>
&gt; &gt;<br>
&gt; &gt; -=C2=A0 =C2=A0 if (check_msg_length(msg, 8, rdata, rdata_len))<br=
>
&gt; &gt; +=C2=A0 =C2=A0 if (msg-&gt;orig_channel-&gt;channel_num =3D=3D 15=
 ||<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg-&gt;o=
rig_channel-&gt;medium_type =3D=3D IPMI_CHANNEL_MEDIUM_SYS_INTF)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0msg_length =3D 8; // SYSTEM INTERFACE=
 MESSAGING<br>
&gt; &gt; +<br>
&gt; &gt; +=C2=A0 =C2=A0 if (check_msg_length(msg, msg_length, rdata, rdata=
_len))<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 return;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[0] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[1] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[2] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[3] =3D 0;<br>
&gt; &gt; +=C2=A0 =C2=A0 /*<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0From Table 32-1, SEL Event Records:<b=
r>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Byte 1<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[7:1] - 7-bit I2C . Sla=
ve Address, or 7-bit system software ID<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[0] 0b =3D ID is IPMB S=
lave Address<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01b =3D sy=
stem software ID<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Byte 2<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 [7:4] - Channel number. Chann=
el that event message was<br>
&gt; &gt; received over. 0h if the<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 e=
vent message was received via the system<br>
&gt; &gt; interface, primary IPMB, or<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i=
nternally generated by the BMC.<br>
&gt; &gt; +=C2=A0 =C2=A0 */<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[4] =3D msg-&gt;data[0];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[5] =3D msg-&gt;orig_channel-&gt;chann=
el_num &lt;&lt; 4;<br>
&gt; &gt; +=C2=A0 =C2=A0 if (msg-&gt;orig_channel-&gt;channel_num =3D=3D 15=
 ||<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg-&gt;o=
rig_channel-&gt;medium_type =3D=3D IPMI_CHANNEL_MEDIUM_SYS_INTF)<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0sel_data[5] =3D 0;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[6] =3D msg-&gt;data[1];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[7] =3D msg-&gt;data[2];<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0sel_data[8] =3D msg-&gt;data[3];<br>
&gt; &gt; --<br>
&gt; &gt; 2.43.0<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Openipmi-developer mailing list<br>
&gt; &gt; <a href=3D"mailto:Openipmi-developer@lists.sourceforge.net" targe=
t=3D"_blank">Openipmi-developer@lists.sourceforge.net</a><br>
&gt; &gt; <a href=3D"https://lists.sourceforge.net/lists/listinfo/openipmi-=
developer" rel=3D"noreferrer" target=3D"_blank">https://lists.sourceforge.n=
et/lists/listinfo/openipmi-developer</a><br>
</blockquote></div></div></div>
</blockquote></div>

--0000000000005fb74206471d0f07--


--===============6832619923432466786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6832619923432466786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6832619923432466786==--

