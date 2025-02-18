import { Equal, Expect } from './helpers/type-utils';

const makeQuery = (
    url: string,
    opts?: {
        method?: string;
        headers?: {
            [key: string]: string;
        };
        body?: string;
    }
) => {};

type MakeQuery = typeof makeQuery;
type MakeQueryParameters = Parameters<typeof makeQuery>;
type MakeQueryParametersSecondArgument = MakeQueryParameters[1];

type tests = [
    Expect<
        Equal<
            MakeQueryParameters,
            [
                url: string,
                opts?: {
                    method?: string;
                    headers?: {
                        [key: string]: string;
                    };
                    body?: string;
                }
            ]
        >
    >
];
